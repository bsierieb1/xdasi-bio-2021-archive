###
# the data set provided is a modified and trimmed version of the data taken from
# https://www.kaggle.com/rec3141/biol342-genome-data
# undergraduate students at the University of Alaska Fairbanks cultured, sequenced, and assembled
# the complete genome of microorganisms as part of the General Microbiology course.
# the data set contains tetranucleotide frequencies in each contig of each genome,
# along with some additional assembly statistics, such as contig length, %GC, and read coverage.
# in this exercise, let us explore the nucleotide composition of contigs in the first genome ("genome0")
# with the goal of identifying potential outliers / wrongly assemblied contigs / contamination from other species
###

# import data
my_df <- read.csv("/Users/bsierieb/Documents/GitHub/xdasi-bio-2021/docs/syllabus/week_15_PCA_Clustering/Class2/W15.C2_Exercise_Clustering_DATA.csv")

# explore data
str(my_df)
head(my_df)

# normalize tetranucleotide frequencies (contained in all columns BUT columns 1 to 5) by contig length
my_df_normalized <- my_df # make a copy of original data
my_df_normalized[,-(1:5)] <- my_df_normalized[,-(1:5)] / my_df_normalized$len

# subset "genome0"
my_df_normalized_0 <- my_df_normalized[my_df_normalized$genome == "genome0", ]

# perform PCA on the normalized tetranucleotide frequencies
pca_results <- prcomp(my_df_normalized_0[,-(1:5)])

# extract and plot proportion of variance explained by the first 20 PCs
variances <- summary(pca_results)$importance["Proportion of Variance", 1:20]
barplot(variances)

# most variance in the data is explained by the first 3 PCs
# plot the distribution of data points along PCs 1 and 2, and then 2 and 3
plot(pca_results$x[,1:2])

plot(pca_results$x[,2:3])

# PC 1 separates two outliers from the rest,
# while PC 2 and 3 separate data into several (3?) clouds.
# this indicates that contigs of the assembly do not have uniform nucleotide composition.
# instead, there are 3 (?) prevalent nucleotide composition patterns.
# let us partition all of our contigs according to their nucleotide composition
# and examine various assembly metrics in each group

# approach I: k-means clustering
# perform k-means clustering with different k in the range from 2 to 20
# and record total within- and between-cluster variance (measured as sum of squares)
within_vector <- c() # empty vector to store within-cluster variances
between_vector <- c() # empty vector to store between-cluster variances
for (n_centers in 2:20) {
  # perform k-means clustering with k = n_centers
  clustered_km <- kmeans(x = pca_results$x[,2:3],
                         centers = n_centers)
  # extract and store within-cluster variance
  within_i <- clustered_km$tot.withinss
  within_vector <- c(within_vector, within_i)
  # extract and store between-cluster variance
  between_i <- clustered_km$betweenss
  between_vector <- c(between_vector, between_i)
}

# elbow plot, option 1
plot(x = 2:20,
     y = within_vector)

# elbow plot, option 2
plot(x = 2:20,
     y = within_vector / between_vector)

# elbow plot indicates that performing k-means clustering with k=3 is optimal
# does silhouette plot agree?

# silhouette plot
library(cluster)
silhouette_vector <- c() # empty vector to store average silhouette widths
for (n_centers in 2:20) {
  # perform k-means clustering with k = n_centers
  clustered_km <- kmeans(x = pca_results$x[,2:3],
                         centers = n_centers)
  # extract assigned cluster identities
  clustering_identities <- clustered_km$cluster
  # calculate silhouettes for all data points
  silhouettes <- silhouette(x = clustering_identities,
                            dist = dist(pca_results$x[,2:3]))
  # average silhouette width across all data points
  silhouette_i <- mean(silhouettes[,"sil_width"])
  silhouette_vector <- c(silhouette_vector, silhouette_i)
}

# silhouette plot
plot(x = 2:20,
     y = silhouette_vector)

# both elbow and silhouette plot suggest that performing k-means clustering with k=3 is optimal

# perform k-means clustering with k=3
clustered_km <- kmeans(x = pca_results$x[,2:3],
                       centers = 3)

# extract assigned cluster identities
cluster_identities <- clustered_km$cluster

# color the data by cluster
plot(pca_results$x[,2:3],
     col = cluster_identities)

# compare %GC, contig length, and read coverage between the three clusters
boxplot(my_df_normalized_0$gc ~ cluster_identities)
boxplot(my_df_normalized_0$len ~ cluster_identities)
boxplot(my_df_normalized_0$cov ~ cluster_identities)

# 2 of the 3 groups of contigs have relatively low %GC and contain none of the longer contigs -
# these would have to be investigated further as they might be contaminants or poorly assembled contigs

# approach II: hierarchical clustering

# calculate Euclidean distances between data points
distances <- dist(pca_results$x[,2:3])

# perform hierarchical clustering with default parameters
clustered_hc <- hclust(distances)

# plot the dendrogram
plot(clustered_hc,
     labels = FALSE) # labels do not fit on the screen anyways

# elbow plot
# as a proxy for within-cluster variance, we can use heights at which the data first split into 2, 3, 4 etc clusters
plot(x = 2:20,
     y = rev(clustered_hc$height)[1:19]) # last height value corresponds to 2 (not 1) clusters, second-last to 3, third-last to 4, which is why we have to reverse the height vector

# elbow plot indicates that cutting the tree such that there are 5 or 6 clusters is optimal
# does silhouette plot agree?

# silhouette plot
silhouette_vector <- c() # empty vector to store average silhouette widths
for (n_centers in 2:20) {
  # cut the tree such that the data are split into k = n_centers clusters
  clustering_identities <- cutree(tree = clustered_hc,
                                  k = n_centers)
  # calculate silhouettes for all data points
  silhouettes <- silhouette(x = clustering_identities,
                            dist = distances)
  # average silhouette width across all data points
  silhouette_i <- mean(silhouettes[,"sil_width"])
  silhouette_vector <- c(silhouette_vector, silhouette_i)
}

# silhouette plot
plot(x = 2:20,
     y = silhouette_vector)

# there are two maxima - the first one (k=2) likely separates highly divergent points from the rest,
# the second one (k=6), could be what we want; also, it agrees with our previous interpretation of the elbow plot

# cut the tree such that the data are split into k=6 clusters
cluster_identities <- cutree(tree = clustered_hc,
                             k = 6)

# color the data by cluster
plot(pca_results$x[,2:3],
     col = cluster_identities)

# compare %GC, contig length, and read coverage between the three clusters
boxplot(my_df_normalized_0$gc ~ cluster_identities)
boxplot(my_df_normalized_0$len ~ cluster_identities)
boxplot(my_df_normalized_0$cov ~ cluster_identities)

# 5 of the 6 groups of contigs have relatively low %GC and contain few of the longer contigs -
# these would have to be investigated further as they might be contaminants or poorly assembled contigs.
# conveniently, many outliers are grouped separately from the main bulk of the data - these can be easily discarded
