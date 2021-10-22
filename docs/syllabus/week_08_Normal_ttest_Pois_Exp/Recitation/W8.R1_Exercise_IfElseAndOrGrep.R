# import data
# this is a trimmed version of the bigger data set taken from
# https://www.kaggle.com/ruslankl/mice-protein-expression
my_df <- read.csv("/Users/bsierieb/Documents/GitHub/xdasi-bio-2021/docs/syllabus/week_08_Normal_ttest_Pois_Exp/Recitation/Data_Cortex_Nuclear_trimmed.csv")

# check data
head(my_df)
tail(my_df)



# to store the t-test results, create an empty data frame from an empty matrix
# with 3 columns and as many rows as there are columns in my_df minus two
# (because my_df contains a column with mice IDs and a column with genotypes)
results_df <- data.frame(matrix(nrow = ncol(my_df)-2,
                                ncol = 3))

# name the columns
colnames(results_df) <- c("gene", "pvalue", "change")

# check
results_df



# loop through all columns of my_df except first and last
for (column_index in 2:(ncol(my_df)-1)) {
  
  # extract gene name from the column names of my_df
  # and write it to the results data frame, column 1 ("gene")
  results_df[column_index-1,1] <- colnames(my_df)[column_index]
  
  # perform t-test
  test_results <- t.test(formula = my_df[,column_index] ~ my_df$Genotype)
  
  # extract p-value and write it to the results data frame
  pval <- test_results$p.value
    results_df[column_index-1,2] <- pval
  
  # extract expression mean for the control genotype and the Down syndrome genotype
  mean_control <- test_results$estimate[1]
  mean_down <- test_results$estimate[2]

  # if p-value is significant, compare expression mean for control and Down sample
  # and write the result of the comparison to the results data frame,
  # otherwise (if p-value is not significant), write "NOT SIGNIFICANT" to the results data frame
  if (pval <= 0.05 & mean_down > mean_control) {
    results_df[column_index-1,3] <- "UPREGULATED"
  } else if (pval <= 0.05 & mean_down < mean_control) {
    results_df[column_index-1,3] <- "DOWNREGULATED"
  } else {
    results_df[column_index-1,3] <- "NOT SIGNIFICANT"
  }

}



# look at the results
results_df



# only keep the phosphorylated proteins (their names start with "p")
phosphorylated_protein_indices <- grep(pattern = "^p",
                                       x = results_df$gene)

results_df[phosphorylated_protein_indices,]


