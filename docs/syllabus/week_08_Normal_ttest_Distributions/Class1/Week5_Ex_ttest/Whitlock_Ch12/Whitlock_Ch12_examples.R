## Examples from Whitlock & Schluter, Chapter 12: variants on the t-test

#########################################################################
## Example 12.2: testosterone and antibodies -- paired t-test
#########################################################################

# read in the data file
bb_paired = read.csv("chap12e2BlackbirdTestosterone.csv")
str(bb_paired)

# add a new column to df -- before / after levels measured in log units
bb_paired$log_diff = bb_paired$logAfterImplant - bb_paired$logBeforeImplant
str(bb_paired)

# compute relevant stats for CI and t-test: mean, sd, sem
d_bar = mean(bb_paired$log_diff)
var_d = sum( (bb_paired$log_diff - d_bar)^2 ) / (nrow(bb_paired) - 1) # or use var() !
sd_d = sqrt(var_d)
se_d = sd_d/sqrt(length(bb_paired$log_diff))
df_d = nrow(bb_paired)-1
c(c_bar, var_d, sd_d, se_d, df_d)

# 95% CI
t_crit = qt(0.975,df_d)
c( d_bar - t_crit*se_d , d_bar + t_crit*se_d )

# 2-sided t-test by hand
t_score = d_bar/se_d # it's positive to double the upper tail
2*pt(q = t_score, df=df_d, lower.tail = FALSE)

# t-test: Welch's approximation
t.test(bb_paired$logAfterImplant,bb_paired$logBeforeImplant,paired = TRUE)

# t-test with equal variances
t.test(bb_paired$logAfterImplant,bb_paired$logBeforeImplant,paired = TRUE,
       var.equal = TRUE,alternative = c("two.sided"))


#########################################################################
## Example 12.3 - Two-sample design
#########################################################################

hl = read.csv("chap12e3HornedLizards.csv")
str(hl)
hl = hl[complete.cases(hl),] # clean the data: remove NA's

## make two vectors for the two groups (living / killed)

# method 1: base R syntax -- make two vectors containing each subset
alive = hl[hl$Survival == "living","squamosalHornLength"]
str(alive)
dead = hl[hl$Survival == "killed","squamosalHornLength"]
str(dead)

# method 2: dplyr -- generates vectors with named indices
#library(dplyr)
#alive = filter(hl, Survival == "living") %>% select(squamosalHornLength) %>% unlist
#dead = filter(hl, Survival == "killed") %>% select(squamosalHornLength) %>% unlist

# compute required elements
all_liz = c(alive,dead)
df_a = length(alive) - 1
df_d = length(dead) - 1

# pooled sample variance -- complicated formula! (see p. 351)
var_p = sum(df_a * var(alive), df_d * var(dead)) / sum(df_a, df_d)
# se uses pooled variance
se_liz = sqrt(var_p * (1/length(alive) + 1/length(dead))) # 1/sums not the same as 1/length(all)!
df_liz = length(all) - 2
diff_liz = mean(alive) - mean(dead)
c(var_p, se_liz, df_liz, diff_liz) # check the computations

# manual CI95 and t-test
t_score = (mean(alive) - mean(dead)) / se_liz
t_crit = qt(0.975,df_liz)
ci_95 = c( diff - t_crit*se  ,  diff + t_crit*se )
ci_95
c(ci_95, t_score, t_crit) # check the computations

# this is the p-value for a two-sided test (2 * the t_score)
# probability that difference is at least as great as observed
# (smaller or larger than expectation)
2*pt(q = t_score, df=df_liz, lower.tail = FALSE)

# t-test with equal variances -- this is the what the method in the book does
t.test(alive, dead, var.equal = TRUE)

# Welch's approximate t-test -- note that df = 40.372 instead of 182!
# this lowers the power of the test and is more conservative
t.test(alive, dead, paired = FALSE, var.equal = FALSE) # default
t.test(alive, dead) # same

# Here, the variances are not the same, but they are close (6.92 vs 7.34)
# ... so we can use the test for equal variances. The rule of thumb
# stated in the book is that this is ok to do this for up to 3-fold
# differences in the variance! (I might want to be more conservative)

#########################################################################
# Summary of differences in the syntax for paired vs. two-sample tests
#########################################################################

## defaults for t-test:
# paired = FALSE
# var.equal = FALSE
# alternative = "two.sided"


## Paired
# t.test(x,y,paired = TRUE, var.equal = TRUE)
# t.test(x,y,paired = TRUE)  # Welch's approximation

# this is equivalent to a one-sample t-test using the
# the mean difference against the control population with mu=0
# t.test(x-y,mu=0)

## Two-sample
# t.test(x,y, var.equal = TRUE)
# t.test(x,y)  # Welch's approximation

## Always specify the test condition first -- otherwise the t-score and
## the 95% CI will have the wrong sign! (The p-value will be the same)

