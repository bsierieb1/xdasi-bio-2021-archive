# import data
my_df <- read.csv("/Users/bsierieb/Documents/GitHub/xdasi-bio-2021/docs/syllabus/week_15_PCA_Clustering_GSEA/Class2/W15.C2_Exercise_Clustering_DATA.csv")

head(my_df)

# normalize tetranucleotide frequencies by length
my_df_normalized <- my_df
my_df_normalized[,-(1:5)] <- my_df_normalized[,-(1:5)] / my_df_normalized$len

# subset genome0
my_df_normalized_0 <- my_df_normalized[my_df_normalized$genome == "genome0", ]

# perform PCA
pca_results <- prcomp(my_df_normalized_0[,-(1:5)])

variances <- summary(pca_results)$importance[2,1:20]
barplot(variances)

plot(pca_results$x[,1:2])
plot(pca_results$x[,2:3])

# kmeans clustering

clustered_km <- kmeans(x = pca_results$x[,2:3],
                       centers = 3)

tot.withinss_vector <- c()
betweenss_vector <- c()
for (n_centers in 1:20) {
  clustered_km <- kmeans(x = pca_results$x[,2:3],
                         centers = n_centers)
  tot.withinss <- clustered_km$tot.withinss
  betweenss <- clustered_km$betweenss
  tot.withinss_vector <- c(tot.withinss_vector, tot.withinss)
  betweenss_vector <- c(betweenss_vector, betweenss)
}

# elbow plot
plot(x = 1:20,
     y = tot.withinss_vector)

plot(x = 2:20,
     y = tot.withinss_vector[-1] / betweenss_vector[-1])

# silhouette plot
library(cluster)

clustered_km <- kmeans(x = pca_results$x[,2:3],
                       centers = 3)

silhouettes <- silhouette(x = clustered_km$cluster,
                          dist = dist(pca_results$x[,2:3]))

silhouette_index <- mean(silhouettes[,"sil_width"])

silhouette_vector <- c()
for (n_centers in 2:20) {
  clustered_km <- kmeans(x = pca_results$x[,2:3],
                         centers = n_centers)
  silhouettes <- silhouette(x = clustered_km$cluster,
                            dist = dist(pca_results$x[,2:3]))
  silhouette_index <- mean(silhouettes[,"sil_width"])
  silhouette_vector <- c(silhouette_vector, silhouette_index)
}

plot(x = 2:20,
     y = silhouette_vector)

# plot on PCA
clustered_km <- kmeans(x = pca_results$x[,2:3],
                       centers = 3)

plot(pca_results$x[,2:3],
     col = clustered_km$cluster)

boxplot(my_df_normalized_0$gc ~ clustered_km$cluster)
boxplot(my_df_normalized_0$len ~ clustered_km$cluster)
boxplot(my_df_normalized_0$cov ~ clustered_km$cluster)

