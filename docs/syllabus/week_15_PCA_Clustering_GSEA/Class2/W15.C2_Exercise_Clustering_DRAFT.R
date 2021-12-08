#---------------------DO-ONCE----------------------#

# prepare data set for class from two tables downloaded from
# https://www.kaggle.com/rec3141/biol342-genome-data

tnf <- read.table("/Users/bsierieb/Desktop/biol342_tnf.tsv",
                  header = T)

other_stats <- read.table("/Users/bsierieb/Desktop/biol342_cov_len_gc.tsv",
                          header = T)

merged <- merge(other_stats,
                tnf,
                by = "contig")

merged$contig <- gsub(pattern = "student",
                      replacement = "genome",
                      x = merged$contig)
merged$student <- gsub(pattern = "student",
                       replacement = "genome",
                       x = merged$student)
colnames(merged)[2] <- "genome"

write.csv(merged,
          "/Users/bsierieb/Documents/GitHub/xdasi-bio-2021/docs/syllabus/week_15_PCA_Clustering_GSEA/Class2/W15.C2_Exercise_Clustering_DATA.csv",
          row.names = F)

#---------------------^--^--^----------------------#

# import data
my_df <- read.csv("/Users/bsierieb/Documents/GitHub/xdasi-bio-2021/docs/syllabus/week_15_PCA_Clustering_GSEA/Class2/W15.C2_Exercise_Clustering_DATA.csv")

# normalize TNFs by contig length
my_df[,-(1:5)] <- my_df[,-(1:5)] / my_df$len

# perform PCA on contigs of the 0th genome
genome0 <- my_df[my_df$genome == "genome0",]
genome0_pca <- prcomp(genome0[,-(1:5)])

# plot scree plot (first 20 PCs)
barplot(summary(genome0_pca)$importance[2,1:20])

# plot PC 1 and 2
plot(genome0_pca$x[,1:2])

# plot PC 2 and 3
plot(genome0_pca$x[,2:3])

# identify outliers by eye
outlier_indices <- which((genome0_pca$x[,1] < -0.5) | (genome0_pca$x[,2] > 0.15))

# examine TNFs of the outliers - do the make sense?
genome0[outlier_indices,]

# try to identify outliers via k-means clustering
clustered <- kmeans(genome0_pca$x[,1:2],
                    centers = 2)
plot(genome0_pca$x[,1:2],
     col = clustered$cluster)

# does not work very well for outliers, but can help explore structure within the bigger bulk of data
clustered <- kmeans(genome0_pca$x[,2:3],
                    centers = 3)
plot(genome0_pca$x[,2:3],
     col = clustered$cluster)

# elbow plot
tws <- c()
for (n_clusters in 1:20){
  clustered <- kmeans(genome0_pca$x[,2:3],
                      centers = n_clusters)
  tws <- c(tws, clustered$tot.withinss)
}
plot(x = 1:20,
     y = tws)

# since we originally wanted to identify outliers,
# hierarchical clustering may be a better strategy
distances <- dist(genome0_pca$x[,1:2])
clustered <- hclust(distances)
plot(clustered,
     labels = F)

plot(genome0_pca$x[,1:2],
     col = cutree(clustered, k = 2))

# elbow plot
plot(x=1:20,
     y=rev(clustered$height)[1:20])

###

# how well would this work for other genomes?

# perform PCA on contigs of the Nth genome
genomeN <- my_df[my_df$genome == "genome1",]
genomeN_pca <- prcomp(genomeN[,-(1:5)])

# hierarchical clustering
distances <- dist(genomeN_pca$x[,1:2])
clustered <- hclust(distances)

plot(genomeN_pca$x[,1:2],
     col = cutree(clustered, k = 2))
plot(genomeN_pca$x[,1:2],
     col = cutree(clustered, k = 3))

# elbow plot
plot(x=1:20,
     y=rev(clustered$height)[1:20])

# some genomes are more like 0, some are more like 1
# one might want to pick an arbitrary cutoff for the jump in TWS when going 1->2 clusters
# and only remove outliers when the jump is larger than the cutoff


