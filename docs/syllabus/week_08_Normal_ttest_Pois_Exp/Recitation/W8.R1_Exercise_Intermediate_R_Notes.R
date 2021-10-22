'''
my_df <- read.csv("/Users/bsierieb/Desktop/Data_Cortex_Nuclear.csv")
my_df <- my_df[my_df$Behavior=="C/S",-(81:82)]
my_df <- my_df[my_df$Treatment=="Saline",-80]
write.csv(my_df,"/Users/bsierieb/Documents/GitHub/xdasi-bio-2021/docs/syllabus/week_08_Normal_ttest_Pois_Exp/Recitation/Data_Cortex_Nuclear_trimmed.csv",row.names=F,quote=F)
'''

my_df <- read.csv("/Users/bsierieb/Documents/GitHub/xdasi-bio-2021/docs/syllabus/week_08_Normal_ttest_Pois_Exp/Recitation/Data_Cortex_Nuclear_trimmed.csv")
head(my_df)
tail(my_df)

my_df[241,] <- NA
my_df[242,] <- NA
for (i in 2:(ncol(my_df)-1)) {
  test_results <- t.test(formula = my_df[,i] ~ my_df$Genotype)
  pval <- test_results$p.value
  mean_wt <- test_results$estimate[1]
  mean_ds <- test_results$estimate[2]
  my_df[242,i] <- t.test_results$p.value
  if (pval < 0.05 && mean_ds > mean_wt) {
    my_df[241,i] <- "UP"
  } else if (pval < 0.05 && mean_ds < mean_wt) {
    my_df[241,i] <- "DOWN"
  } else {
    my_df[241,i] <- "NC"
  }
}

my_df[243,2:(ncol(my_df)-1)] <- p.adjust(my_df[242,2:(ncol(my_df)-1)],
                                         method = "fdr")

my_df[241:243,grep("^p",colnames(my_df))]


