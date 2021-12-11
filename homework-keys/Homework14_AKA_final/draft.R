library(Seurat)

# PBMC count data
counts <- Read10X(data.dir = "/Users/bsierieb/Documents/GitHub/xdasi-bio-2021/homework-keys/Homework14_AKA_final/sample_data")

# convert to sparse matrix
counts <- as.matrix(counts)

# select highly variable genes (= genes with variance that exceeds variance predicted by expression level)
gene_means <- apply(X = counts,
                    MARGIN = 1,
                    FUN = function(row){ log(mean(row) + 1) })

gene_variances <- apply(X = counts,
                        MARGIN = 1,
                        FUN = function(row){ log(var(row) + 1) })

plot(x = gene_means,
     y = gene_variances)

var_means_model <- lm(gene_variances ~ gene_means)

gene_ranks_by_residuals <- rank(var_means_model$residuals,
                                ties.method = "random")

n_genes <- nrow(counts)
highly_variable_genes <- which(gene_ranks_by_residuals %in% (n_genes-1000):n_genes)

points(x = gene_means[highly_variable_genes],
       y = gene_variances[highly_variable_genes],
       col = 'red')

# CP10K-normalize
counts_norm <- 1E4 * counts / colSums(counts)

# log-transform
counts_norm_log <- log(counts_norm + 1)

# subset highly variable genes
count_norm_log_hv <- counts_norm_log[highly_variable_genes,]

# scale data
count_norm_log_hv_scaled <- t(scale(t(count_norm_log_hv)))

# PCA
pca <- prcomp(t(count_norm_log_hv_scaled))

barplot(summary(pca)$importance[2, 1:20])

plot(pca$x[,1:2])
plot(pca$x[,2:3])
plot(pca$x[,3:4])

# look at genes with highest loading on PCs 1-3

sort(pca$rotation[,1],
     decreasing = TRUE)[1:10]
sort(pca$rotation[,2],
     decreasing = TRUE)[1:10]
sort(pca$rotation[,3],
     decreasing = TRUE)[1:10]

# UMAP on selected PCs
pca_umap <- umap(pca$x[,1:8])

plot(pca_umap$layout)

# cluster cells using your favorite method
withinss_vector <- c()
for (i in 2:20){
  clustered <- kmeans(pca_umap$layout,
                      centers = i)
  withinss_vector <- c(withinss_vector, clustered$tot.withinss)
}
plot(x = 2:20,
     y = withinss_vector)

clustered <- kmeans(pca_umap$layout,
                    centers = 7)

cluster_identities <- clustered$cluster

plot(pca_umap$layout,
     col = cluster_identities)

# identify marker genes for cluster 1
cluster_identities_1vsrest <- ifelse(test = cluster_identities==1,
                                     yes = 1,
                                     no = 2)

plot(pca_umap$layout,
     col = cluster_identities_1vsrest)

de_results <- data.frame("gene" = rownames(counts),
                         "l2fc" = NA,
                         "pval" = NA)

for (i in 1:nrow(counts)){
  de_results$l2fc[i] <- log(mean(counts[i,cluster_identities_1vsrest==1]) / mean(counts[i,cluster_identities_1vsrest==2]),
                            base = 2)
  de_results$pval[i] <- wilcox.test(formula = counts[i,] ~ cluster_identities_1vsrest)$p.value
  if (i %/% 1000 == i / 1000) { print(i) }
}

de_results$padj <- p.adjust(de_results$pval,
                            method = "fdr")

library(dplyr)
de_results %>% filter(l2fc != Inf) %>% filter(l2fc != -Inf) %>% filter(padj <= 0.05) %>% arrange(desc(l2fc)) %>% head()

# plot top 3 markers
library(viridis)
selected_gene_counts <- factor(counts[rownames(counts)=="FGFBP2",])
n_levels <- length(levels(selected_gene_counts))
my_palette <- viridis_pal(option = "H")(n_levels)[selected_gene_counts]
plot(pca_umap$layout,
     col = my_palette)









