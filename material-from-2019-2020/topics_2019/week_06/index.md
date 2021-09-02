---
title: XDAS In-class exercise (Oct. 7 & 9, 2019)
subtitle: Statistical Inference
---

# Statistical concepts for confidence intervals and p-values

## Background

To illustrate these concepts, we will work through an example from the following book:

 **Data Analysis for the Life Sciences**
 *Rafael Irizarry and Michael Love* - [PDF and ePub](https://drive.google.com/open?id=1Rkk326tFkwLFduZCaYpRYwDf7Z3eHXjt) - [HTML](http://genomicsclass.github.io/book/)

**Chapter 1: Inference**

+ Null Hypothesis
+ Populations, Samples and Estimates
+ Central Limit Theorem and t-distribution
+ Confidence Intervals
+ t-tests

## Exercise

We will discover how to determine if a high-fat diet results in statistically significant weight gain (in mice!)

### The Data

We will work through an exercise based on data from the following paper:
https://pdfs.semanticscholar.org/606e/5b7c269f533ad47baef1b0fb8992431cb72f.pdf

These are the datasets we will use:

+ [femaleMiceWeights.csv](data/femaleMiceWeights.csv)
+ [femaleControlsPopulation.csv](data/femaleControlsPopulation.csv)
+ [mice_pheno.csv](mice_pheno.csv)

### R Markdown files

#### Monday (10/7):

+ Introduction to dplyr - [RMD](dplyr_intro_xdas.Rmd) - [HTML](dplyr_intro_xdas.html)
+ Random variables - [RMD](random_variables.Rmd) - [HTML](random_variables.html)

#### Wednesday (10/9):

_**Exercise 1**_
+ High-fat diet-fed mouse study - [RMD](High-fat_diet_mouse_study.Rmd) - [HTML](High-fat_diet_mouse_study.html)
+ [Confidence intervals](http://genomicsclass.github.io/book/pages/confidence_intervals.html)

_**Exercise 2**_
+ One group t-test - [RMD](t-tests/OneGroupTtest.Rmd) - [HTML](t-tests/OneGroupTtest.html)
+ Two group t-test - [RMD](t-tests/TwoGroupTtest.Rmd) - [HTML](t-tests/TwoGroupTtest.html)
+ Placebo vs Drug Exercise - People were given a Drug or a Placebo and effect was measured for both. We want to know if the Drug effect is significantly greater.

`Placebo = c(54, 51, 58, 44, 55, 52, 42, 47, 58, 46)`

`Drug = c(54, 73, 53, 70, 73, 68, 52, 65, 65, 70)`

+ Perform a shuffle test (approximate permutation test) to determine if the difference in the means is significant.
+ Perform bootstrap to determine the confidence interval of mean for the overall data (include Placebo and Drug values as one)
    + Is the mean of Placebo significantly different than the mean of all datapoints?
    + Verify your results using the **t.test()** function.
    + Solutions [RMD](t-tests/StatsEasyTwoSample.Rmd) - [HTML](t-tests/StatsEasyTwoSample.html)
