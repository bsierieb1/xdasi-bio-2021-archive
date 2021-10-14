## XDAS 2020 - Hypergeometric test

## Ref: Genetically engineered cerebral organoids model brain tumor formation
##      Bian..Knoblich, Nature Methods 15,631–639 (2018)
## URL: https://www.nature.com/articles/s41592-018-0070-7
## Fig S3: https://www.nature.com/articles/s41592-018-0070-7/figures/9

## Hypergeometric test for overlap of up-regulated genes in brain organoids

# check how the hypergeometric functions work
help(rhyper)
help(phyper)


# Question: significant difference between up- or down-regulated genes
# Cluster 2 vs. Cluster 3 (each relative to CTL)

## Up-regulation ========================================================= #
## 2450 total genes up-regulated in Clusters 2 & Clusters 3
## out of 4035 genes up-regulated in either experiment (vs CTL)

t = 92        # overlap
a = 2155 + t  # 2247: size of Cluster 2 (Set A = bigger set)
b = 203 + t   # 295: size of Cluster 3 (Set B = smaller set)
n = 4035      # total genes up-regulated in both experiments

# What is the expected overlap?
ol.exp = a*b / n
ol.exp

## p-value using hypergeometric test ----------------------- #

# if b <= a, the maximum possible size of t is b;
# so the total probability of getting an overlap of size t or less is:

# PDF: sum(P(x = 0:t))
sum(dhyper(0:t, a, n - a, b)) # p-value for t

# CDF: P(x <= t)
phyper(t, a, n - a, b, lower.tail=T) 

# the P-value is actually the same either way
sum(dhyper(0:t, b, n - b, a))         # p-value for t
phyper(t, b, n - b, a, lower.tail=T)  # same


## with Fisher's exact test ------------------------------- #

# the orientation of the table is arbitrary, since the test is for more or less extreme values
#   - by convention, put the categories "of interest" first
# matrix(c(intersect(A,B), setdiff(A,B), setdiff(B,A), n - union(A,B) ), nrow=2)

test.data = matrix(c( t, a - t, b - t, n - (a+b-t) ), nrow=2)
rownames(test.data) = c("C3","not.C3")
colnames(test.data) = c("C2","not.C2")
test.data

#fisher.test(test.data, alternative="greater") # test for enrichment
fisher.test(test.data, alternative="less")     # test for depletion


## Down-regulation ========================================================= #
# 1493 in B and C out of 2738 total

t = 97       # overlap
a = 995 + t  # size of size of Cluster 2 (Set A = bigger set)
b = 401 + t  # size of size of Cluster 3 (Set B = smaller set)
n = 2738     # total

# What is the expected overlap?
ol.exp = a*b / n
ol.exp

## p-value using hypergeometric test ----------------------- #

# PDF: sum(P(x = 0:t))
sum(dhyper(0:t, a, n - a, b)) # p-value for t

# CDF: P(x <= t)
phyper(t, a, n - a, b, lower.tail=T) 


## with Fisher's exact test ------------------------------- #

# matrix(c(intersect(A,B), setdiff(A,B), setdiff(B,A), n - union(A,B) ), nrow=2)
test.data = matrix(c( t, a - t, b - t, n - (a+b-t) ), nrow=2)
rownames(test.data) = c("C3","not.C3")
colnames(test.data) = c("C2","not.C2")
test.data

fisher.test(test.data, alternative="less")     # test for depletion
