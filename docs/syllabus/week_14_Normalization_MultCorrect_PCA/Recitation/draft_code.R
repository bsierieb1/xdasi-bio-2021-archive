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
                    design = ~1)

# transform counts
dds_transformed <- vst(dds)
# extract transformed counts
transformed_counts <- assay(dds_transformed)
distances <- dist(t(transformed_counts))

pheatmap(distances)
