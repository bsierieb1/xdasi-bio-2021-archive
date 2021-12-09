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



# k-means clustering

# example
clustered <- kmeans(genome0_pca$x[,2:3],
                    centers = 3)

# elbow plot, option 1
tws <- c()
for (n_clusters in 1:20){
  clustered <- kmeans(genome0_pca$x[,2:3],
                      centers = n_clusters)
  tws <- c(tws, clustered$tot.withinss)
}
plot(x = 1:20,
     y = tws)

# elbow plot, option 2
tws <- c()
for (n_clusters in 2:20){
  clustered <- kmeans(genome0_pca$x[,2:3],
                      centers = n_clusters)
  tws <- c(tws, clustered$tot.withinss / clustered$betweenss)
}
plot(x = 2:20,
     y = tws)

# silhouette plot
library(cluster)

ss <- c()
for (n_clusters in 2:20){
  clustered <- kmeans(genome0_pca$x[,2:3],
                      centers = n_clusters)
  silhouettes <- silhouette(x = clustered$cluster,
                            dist = dist(genome0_pca$x[,2:3]))
  ss <- c(ss, mean(silhouettes[,"sil_width"]))
}
plot(x = 2:20,
     y = ss)

# cluster with chosen k, color on the plot, compare assembly metrics
clustered <- kmeans(genome0_pca$x[,2:3],
                    centers = 3)

plot(genome0_pca$x[,2:3],
     col = clustered$cluster)

boxplot(genome0$gc~clustered$cluster)
boxplot(genome0$len~clustered$cluster)




# hierarchical clustering
distances <- dist(genome0_pca$x[,2:3])
clustered <- hclust(distances)
plot(clustered,
     labels = F)

# elbow plot
plot(x=1:20,
     y=rev(clustered$height)[1:20])

# silhouette plot
ss <- c()
for (n_clusters in 2:20){
  silhouettes <- silhouette(x = cutree(clustered,
                                       k = n_clusters),
                            dist = dist(genome0_pca$x[,2:3]))
  ss <- c(ss, mean(silhouettes[,"sil_width"]))
}
plot(x = 2:20,
     y = ss)

# cluster with chosen k, color on the plot, compare assembly metrics
plot(genome0_pca$x[,2:3],
     col = cutree(clustered, k = 6))

boxplot(genome0$gc~cutree(clustered, k = 6))
boxplot(genome0$len~cutree(clustered, k = 6))




