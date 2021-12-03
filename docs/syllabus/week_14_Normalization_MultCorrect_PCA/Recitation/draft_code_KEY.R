library(DESeq2) #BC
library(parathyroidSE) #BC
library(RColorBrewer) #normal
library(pheatmap) #normal

data("parathyroidGenesSE")
se <- parathyroidGenesSE

str(se)
class(se)
se

# convert SE object to DDS object
dds <- DESeqDataSet(se = se,
                    design = ~ time)

# transform counts
dds_transformed <- vst(dds)

# extract transformed counts
transformed_counts <- assay(dds_transformed)
# calculate distances
distances <- dist(t(transformed_counts))
# add row names
distances <- as.matrix(distances)
rownames(distances) <- paste("patient",
                             dds$patient,
                             dds$treatment,
                             dds$time,
                             sep = "_")
# plot distances
pheatmap(distances)

# perform PCA
plotPCA(dds_transformed, intgroup = "patient")
plotPCA(dds_transformed, intgroup = "time")
plotPCA(dds_transformed, intgroup = "treatment")
# functions hacking
library(ggplot2)
plotPCA_custom(dds_transformed, intgroup = "patient")

# talk about LFC (1-4, 1-2, 2-1, 4-1)
# talk about NB model
# talk about log-likelihood and Wald vs LRT vs score-based tests

# perform DE
dds_de <- dds[, dds$treatment=="Control" ]
dds_de <- DESeq(dds)
res <- results(dds_de)
res
res_filtered <- res[res$padj<=0.05 & !is.na(res$padj),]
res_filtered

# plot counts
plotCounts(dds_de,
           gene = rownames(res_filtered)[1],
           intgroup = "time")
