library(ggplot2)

n_genes <- 1000

data_same_distr <- data.frame("pvalues" = rep(NA, n_genes))
head(data_same_distr)

for (i in 1:nrow(data_same_distr)) {
  sample1 <- rnorm(n = 5,
                   mean = 1)
  sample2 <- rnorm(n = 5,
                   mean = 1)
  data_same_distr$pvalues[i] <- t.test(sample1, sample2)$p.value
}

head(data_same_distr)

ggplot(data = data_same_distr,
       mapping = aes(x = pvalues)) +
  geom_histogram(breaks = seq(from = 0,
                              to = 1,
                              by = 0.05))

data_same_distr$classification <- NA
data_same_distr$classification[data_same_distr$pvalues < 0.05] <- "FP"
data_same_distr$classification[data_same_distr$pvalues >= 0.05] <- "TN"

ggplot(data = data_same_distr,
       mapping = aes(x = pvalues,
                     fill = classification)) +
  geom_histogram(breaks = seq(from = 0,
                              to = 1,
                              by = 0.05))


###

n_genes <- 1000

data_diff_distr <- data.frame("pvalues" = rep(NA, n_genes))
head(data_diff_distr)

for (i in 1:nrow(data_diff_distr)) {
  sample1 <- rnorm(n = 5,
                   mean = 1)
  sample2 <- rnorm(n = 5,
                   mean = 3)
  data_diff_distr$pvalues[i] <- t.test(sample1, sample2)$p.value
}

head(data_diff_distr)

ggplot(data = data_diff_distr,
       mapping = aes(x = pvalues)) +
  geom_histogram(breaks = seq(from = 0,
                              to = 1,
                              by = 0.05))

data_diff_distr$classification <- NA
data_diff_distr$classification[data_diff_distr$pvalues < 0.05] <- "TP"
data_diff_distr$classification[data_diff_distr$pvalues >= 0.05] <- "FN"

ggplot(data = data_diff_distr,
       mapping = aes(x = pvalues,
                     fill = classification)) +
  geom_histogram(breaks = seq(from = 0,
                              to = 1,
                              by = 0.05))


