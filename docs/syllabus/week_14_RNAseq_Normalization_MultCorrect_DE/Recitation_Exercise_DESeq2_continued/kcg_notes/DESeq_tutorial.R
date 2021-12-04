#BiocManager::install("DESeq2") 
library(DESeq2)
#BiocManager::install("parathyroidSE") 
library(parathyroidSE)
library(RColorBrewer)
library(pheatmap)

data("parathyroidGenesSE")
se = parathyroidGenesSE

dds = DESeqDataSet(se = se,
                   design = ~1)

dds_transformed = vst(dds)
transformed_counts = assay(dds_transformed)
distances = dist(t(transformed_counts))

pheatmap(distances)

distances = as.matrix(distances)
colData(dds)$patient

# R understands to repeat this for all items in df so don't have to repeat a bunch of times
rownames(distances) = paste("patient",
                            dds$patient,
                            dds$treatment,
                            dds$time,
                            sep = "_")

pheatmap(distances)

plotPCA(dds_transformed,
        intgroup = "patient")

# ?plotPCA
DESeq2:::plotPCA.DESeqTransform

# =========================================================================== #

plotPCA_custom = function (object, intgroup = "condition", ntop = 500, returnData = FALSE) 
{
  rv <- rowVars(assay(object))
  select <- order(rv, decreasing = TRUE)[seq_len(min(ntop, 
                                                     length(rv)))]
  pca <- prcomp(t(assay(object)[select, ]))
  percentVar <- pca$sdev^2/sum(pca$sdev^2)
  if (!all(intgroup %in% names(colData(object)))) {
    stop("the argument 'intgroup' should specify columns of colData(dds)")
  }
  intgroup.df <- as.data.frame(colData(object)[, intgroup, 
                                               drop = FALSE])
  group <- if (length(intgroup) > 1) {
    factor(apply(intgroup.df, 1, paste, collapse = ":"))
  }
  else {
    colData(object)[[intgroup]]
  }
  d <- data.frame(PC1 = pca$x[, 3], PC2 = pca$x[, 4], group = group, 
                  intgroup.df, name = colnames(object))
  if (returnData) {
    attr(d, "percentVar") <- percentVar[1:2]
    return(d)
  }
  ggplot(data = d, aes_string(x = "PC1", y = "PC2", color = "group")) + 
    geom_point(size = 3) + xlab(paste0("PC1: ", round(percentVar[1] * 100), "% variance")) +
    ylab(paste0("PC2: ", round(percentVar[2] * 100), "% variance")) + 
    coord_fixed()
}

plotPCA_custom(dds_transformed,
               intgroup = "patient")

# still used variance from PC1 and PC2
plotPCA(dds_transformed,
        intgroup = "patient")
plotPCA_custom(dds_transformed,
               intgroup = "treatment")

# =========================================================================== #
# modified DESeq2 plotPCA function to plot any two PC's together
# function has 2 additional integer parameters: dim1, dim2
plotPCA_custom2 = function (object, intgroup = "condition", 
                            ntop = 500, returnData = FALSE,
                            dim1 = 1,
                            dim2 = 2) 
{
  rv <- rowVars(assay(object))
  select <- order(rv, decreasing = TRUE)[seq_len(min(ntop, 
                                                     length(rv)))]
  pca <- prcomp(t(assay(object)[select, ]))
  percentVar <- pca$sdev^2/sum(pca$sdev^2)
  if (!all(intgroup %in% names(colData(object)))) {
    stop("the argument 'intgroup' should specify columns of colData(dds)")
  }
  intgroup.df <- as.data.frame(colData(object)[, intgroup, 
                                               drop = FALSE])
  group <- if (length(intgroup) > 1) {
    factor(apply(intgroup.df, 1, paste, collapse = ":"))
  }
  else {
    colData(object)[[intgroup]]
  }
  d <- data.frame(PC1 = pca$x[, dim1], 
                  PC2 = pca$x[, dim2], 
                  group = group, intgroup.df, name = colnames(object))
  if (returnData) {
    attr(d, "percentVar") <- percentVar[dim1:dim2]
    return(d)
  }
  ggplot(data = d, aes_string(x = "PC1", y = "PC2", color = "group")) + 
    geom_point(size = 3) + 
    xlab(paste0("PC",dim1,": ", round(percentVar[dim1] * 100), "% variance")) +
    ylab(paste0("PC",dim2,": ", round(percentVar[dim2] * 100), "% variance")) + 
    coord_fixed()
}
# =========================================================================== #

plotPCA(dds_transformed,
               intgroup = "patient")

plotPCA_custom2(dds_transformed,
                intgroup = "patient", dim1 = 1, dim2 = 2)
plotPCA_custom2(dds_transformed,
                intgroup = "patient", dim1 = 2, dim2 = 3)
plotPCA_custom2(dds_transformed,
               intgroup = "patient", dim1 = 3, dim2 = 4)

plotPCA_custom2(dds_transformed,
                intgroup = "treatment", dim1 = 3, dim2 = 4)
plotPCA_custom2(dds_transformed,
               intgroup = "time", dim1 = 3, dim2 = 4)

plotPCA_custom2(dds_transformed,
                intgroup = "patient", dim1 = 2, dim2 = 3)
plotPCA_custom2(dds_transformed,
                intgroup = "time", dim1 = 2, dim2 = 3)


# =========================================================================== #
# =========================================================================== #
dds = DESeqDataSet(se = se,
                   design = ~ time)
dds_ds = DESeq(dds)
res = results(dds_ds)
res

significant_indices = res$padj < 0.05 & !is.na(res$padj)
res_filtered = res[significant_indices,]
res_filtered

plotCounts(dds_ds,
           gene= "ENSG00000000460",
           intgroup = "time")


dds = DESeqDataSet(se = se,
                   design = ~ treatment)
dds_ds = DESeq(dds)
res = results(dds_ds)
res

significant_indices = res$padj < 0.05 & !is.na(res$padj)
res_filtered = res[significant_indices,]
res_filtered

plotCounts(dds_ds,
           gene= "ENSG00000000460",
           intgroup = "time")


dds = DESeqDataSet(se = se,
                   design = ~ treatment)
dds_ds = DESeq(dds)
res = results(dds_ds,
              contrast = c("treatment", "DPN", "Control"))
res

significant_indices = res$padj < 0.05 & !is.na(res$padj)
res_filtered = res[significant_indices,]
res_filtered

plotCounts(dds_ds,
           gene= "ENSG00000000460",
           intgroup = "time")



dds = DESeqDataSet(se = se,
                   design = ~ patient + treatment)
dds_ds = DESeq(dds)
res = results(dds_ds,
              contrast = c("treatment", "DPN", "Control"))
res

significant_indices = res$padj < 0.05 & !is.na(res$padj)
res_filtered = res[significant_indices,]
res_filtered

plotCounts(dds_ds,
           gene= "ENSG00000020577",
           intgroup = c("patient","treatment"))


