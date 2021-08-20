---
title: Class Notes
permalink: /topics/
hide: true
---

#### Class notes for each topic will be posted here on a weekly basis. For lab exercises, links to downloadable .Rmd files will be included here.

[comment]: # (Uncomment hidden headers below as the semester progresses and add links to content)

## Index

  - [Week 1 - Course Overview and Introduction to R](#week-1-course-overview-and-introduction-to-r)
  - [Week 2 - Intermediate R](#week-2-intermediate-r)
  - [Week 3 - Probability, Summary Statistics, and Distributions](#week-3-probability-summary-statistics-and-distributions)
  - [Week 4 - Probability Distributions, Part 2](#week-4-probability-distributions-part-2)
  - [Week 5 - Distributions; Sampling, ECDFs, the Central Limit Theorem](#week-5-distributions-sampling-ecdfs-the-central-limit-theorem)
  - [Week 6 - Null hypothesis testing, confidence intervals, t-distribution, t-tests](#week-6-null-hypothesis-testing-confidence-intervals-t-distribution-t-tests)
  - [Week 7 - t-tests (cont'd), Type I and II Errors, Power, Nonparametric tests](#week-7-t-tests-contd-type-i-and-ii-errors-power-nonparametric-tests)
  - [Week 8 - Tabular Analyses and ANOVA](#week-8-tabular-analyses-and-anova)
  - [Week 9 - ANOVA with multiple factors; the Tidyverse](#week-9-anova-with-multiple-factors-tidyverse)
  - [Week 10 - Distance Measures, Linear and Logistic Regression](#week-10-distance-measures-linear-and-logistic-regression)
  - [Week 11 - Logistic Regression (cont'd) and Experimental Design](#week-11-logistic-regression-contd-experimental-design)
  - [Week 12 - Functional Enrichment Analysis and Multiple Hypothesis Testing](#week-12-functional-enrichment-analysis-and-multiple-hypothesis-testing)
  - [Week 13 - Bayes and Thanksgiving](#week-13-bayes-and-thanksgiving)
  - [Week 14 - Normalization, Clustering, and PCA](#week-14-normalization-clustering-and-pca)
  - [Week 15: Simple RNA-seq workflow](#week-15-simple-rna-seq-workflow)
  

---

## Week 1: Course Overview and Introduction to R

+ _**Pre-class Assignment**_
The following should be completed before coming to the first class on Sept. 4:
  + 1) We will be using **DataCamp** online exercises to learn R in this course. The series you will complete may be found here: [**Introductory Statistics for Biologists**](https://www.datacamp.com/enterprise/introductory-statistics-for-biologists). Complete the first course module, **Introduction to R**.
  + 2) Install R and RStudio on your laptop. If you haven't already done this before, use the instructions provided here: [**R Tutorial**](https://xdas.bio.nyu.edu/r_tutorial/)

+ _**Background**_
  + [R Tutorial](https://xdas.bio.nyu.edu/r_tutorial/)

+ _**In-class Exercises**_
  + **Exercise 1**- [Questions](week_01/week01_exercise1.md)
  + **R Markdown Intro** - [HTML](week_01/R_Markdown_Intro.html) - [PDF](week_01/R_Markdown_Intro.pdf)
  + **Homework Demo** - [HTML](week_01/HW_demo.html) - [PDF](week_01/HW_demo.pdf) - [RMD](week_01/HW_demo.Rmd)
  + **Exercise 2** - [RMD](week_01/week01_exercise2.Rmd)

---      
## Week 2: Intermediate R

+ _**Pre-class Assignment**_
  + The following **DataCamp** modules should be completed **before coming to class on Sept. 9**:
     + **Data Visualization in R**
     + [Chapter 1: A quick introduction to base R graphics](https://campus.datacamp.com/courses/data-visualization-in-r/a-quick-introduction-to-base-r-graphics)
  + **Importing Data in R**
     + [Chapter 1: Importing data from flat files with utils](https://campus.datacamp.com/courses/importing-data-in-r-part-1/importing-data-from-flat-files-with-utils)
  + **Intermediate R**
     + [Chapter 1: Conditional and control flow](https://campus.datacamp.com/courses/intermediate-r/chapter-1-conditionals-and-control-flow)
     + [Chapter 2: Loops](https://campus.datacamp.com/courses/intermediate-r/chapter-2-loops)
  + **Due September 11th (Wednesday)**:
     + **Intermediate R**
     + [Chapter 3: Functions](https://campus.datacamp.com/courses/intermediate-r/chapter-3-functions)
     + [Chapter 4: The Apply family](https://campus.datacamp.com/courses/intermediate-r/chapter-4-the-apply-family)
     + Chapter 5 is OPTIONAL. It is not required.

+ _**Background**_
  + [**R Tutorial**](https://xdas.bio.nyu.edu/r_tutorial/)
  + [**R Data structures**](https://xdas.bio.nyu.edu/r_data/)
  + [**R Plots**](https://xdas.bio.nyu.edu/learning_r/MSKRplots.html)

+ _**In-class Exercises**_
  + **Exercise 2 (from last week)** - [RMD](week_01/week01_exercise2.Rmd)
  + [**Writing Function, loops, and apply**][RMD](week_02/week_02_writing_R_functions.Rmd) [HTML](week_02/week_02_writing_R_functions.html)

---      

## Week 3: Probability, Summary Statistics, and Distributions

### Introduction to Probability, Part 1 (Monday)

+ _**Pre-class Assignment**_
  + Read the following chapter from Ken Aho's book **Foundational and Applied Statistics**:
    - **Aho, Chapter 2: Introduction to Probability** - [PDF](https://drive.google.com/open?id=1cpC3ofcP9DIB8vDieE1lBVVAesWklCyM)
  + We will begin class with some conceptual questions on the assigned reading.

+ _**Topics: Probability**_
  + Monty Hall problem
  + Frequentist vs. Bayesian philosophy (2.1.2)
  + Random variables, deterministic vs. probabilistic models (2.1)
  + Set Theory (2.1.1)
  + Classical Probability (Ch. 2.2)
    - Proportions
    - Sample space
    - Null set
  + Disjoint / not disjoint (2.2.1)
  + Independence (2.2.2)
  + Conditional Probability (2.3)

### Probability, Part 2; Distributions, Part 1 (Wednesday)

+ _**Pre-class Reading Assignment**_
  + **Aho, Chapter 3.1-3.2: Probability Density Functions, Part 1** - [PDF](https://drive.google.com/open?id=1ck7QGKh1TS_lo_BCjBHMk4LSB-TO2sEN)
  + We will begin class with some conceptual questions on the assigned reading.

+ _**Background**_
  + Tranchina, _Elements of Calculus_ - [PDF](https://xdas.bio.nyu.edu/references/CalculusReview_2.0.pdf)
    - This primer reviews the fundamental concepts and mathematical basis of many standard probability distributions. Take a little time to review this as a refresher if you haven't taken calculus in a while.

+ _**Monty Hall Simulation**_
  + You may want to complete this on your own as a thought exercise.
  + Link to [Datacamp](https://campus.datacamp.com/courses/probability-puzzles-in-r/introduction-and-classic-puzzles?ex=9)

+ _**Topics: Probability**_
  + Bayes Rule (2.6)
  + Odds (2.4)
  + Odds Ratio and Relative Risk (2.4.1)
  + Combinatorial Analysis (2.5)
    - Multiplication Rule (2.5.1)
  + Permutations (2.5.2)
  + Combinations (2.5.3)

+ _**Topics: Probability Density Functions**_
  + Density (3.1.2)
  + Cumulative Distribution Function (3.1.3)
  + Discrete PDFs (3.2.1)
    - Bernoulli (3.2.1.1)
    - Binomial (3.2.1.2)
  + [**Lecture Notes**](week_03/Discrete_and_Continuous_Distributions_I_2019.pdf)


### R functions for Distributions (Friday)

+ _**Pre-class Reading Assignment**_
  + **Dalgaard, Chapter 3: Probability and Distributions** - [PDF](https://drive.google.com/open?id=1d40ILDrWe1w9AQM6zAtmEtfCEJPgEZ76)

+ _**Topics: R functions for distributions**_
  - r: Random Sampling
  - d: Densities (PDFs)
  - p: Probabilities (CDFs)
  - q: Quantiles

+ _**R Demonstration**_
  + **Week 3 Recitation** - [Rmd](week_03/Week3_Recitation.Rmd) [HTML](week_03/Week3_Recitation.html)

---

## Week 4: Probability Distributions, Part 2

### Binomial and Normal (Monday)

+ _**Pre-class Reading Assignment**_
  + **Aho, Chapter 3.1-3.2: Probability Density Functions, Part 1** - [PDF](https://drive.google.com/open?id=1ck7QGKh1TS_lo_BCjBHMk4LSB-TO2sEN)
  + **Aho, Chapter 4.3: Statistics** - [PDF](https://drive.google.com/open?id=1cvPWc2xXqXTLHH5Ycyy_cfsnspw-olXp)

+ _**Topics**_
  + Review:
    - PDFs (3.1.2) and CDFs (3.1.3)
    - Discrete PDFs (3.2.1)
      - Bernoulli (3.2.1.1)
      - Binomial (3.2.1.2)
  + Continuous PDFs
    - Normal distribution (3.2.2.2)
      - Standard normal
    - Uniform distribution (3.2.2.1) - will probably not be discussed

  + [**Lecture Notes**](week_04/Discrete_and_Continuous_Distributions_II_2019.pdf)

### Other Discrete and Continuous Distributions (Wednesday)

+ _**Pre-class Reading Assignment**_
  + **Aho, Chapter 3.3-3.6: Probability Density Functions, Part 2** - [PDF](https://drive.google.com/open?id=1cjF3ykw5K1_gjd4mydDN9fvBdzELpLvk)
  + We will begin class with some conceptual questions on the assigned reading.

+ _**Topics**_
  + Review
  + Discrete PDFs (3.3.1)
    - Poisson (3.3.1.1)
    - Hypergeometric (3.3.1.2)
    - Geometric (3.3.1.3)
    - Negative Binomial (3.3.1.4)
  + Continuous PDFs (3.3.2)
    - Exponential (3.3.2.4)
    - Lognormal (3.3.2.8)
  + [**Lecture Notes**](week_04/Discrete_and_Continuous_Distributions_III_2019.pdf)

  _We will not cover the formalities of the following distributions, but they are relevant to some topics that will come up later in the course:_
    - Chi-squared (3.3.2.1) — relevant to ANOVA and categorical tests
    - t-distribution (3.3.2.2) — relevant to hypothesis testing
    - F-distribution (3.3.2.3) — relevant to Chi-squared
    - Logistic (3.3.2.9) — relevant to logistic regression

  _We will NOT cover these in this course:_
    - Beta (3.3.2.5)
    - Gamma (3.3.2.6)
    - Weibull (3.3.2.7)

+ _**In-class Worksheets**_
  + **Introduction to dnorm, pnorm, qnorm, rnorm** - [PDF](http://xdas.bio.nyu.edu/learning_r/Intro_R_dqpr_functions.pdf) - [RMD](http://xdas.bio.nyu.edu/learning_r/Intro_R_dqpr_functions.Rmd)
  + _**Coin Toss**_  [HTML](week_05/CoinToss_kcg.html)  [\[RMD\]](week_05/CoinToss_kcg.Rmd)

### Practice with Distributions and ECDFs (Friday)

+ **Week 4 Recitation** - [Rmd](week_04/Week_4_Recitation.Rmd) [HTML](week_04/Week_4_Recitation.html)
  + Class Excercise Data - [Group 1](week_04/Week_4_Group1.tsv)
  + Class Excercise Data - [Group 2](week_04/Week_4_Group2.tsv)
  + Class Excercise Data - [Group 3](week_04/Week_4_Group3.tsv)

---

## Week 5: Distributions; Sampling, ECDFs, the Central Limit Theorem

### What's my question? (Monday)

We will play a game using the distributions we have learned to ask different kinds of questions about the same experimental setup. It will be really fun!

+ _**Worksheet**_
  + **Distributions Exercise** - [HTML](week_05/Distributions_in_class_exercise_20190930.html) - [RMD](week_05/Distributions_in_class_exercise_20190930.Rmd)
  + **Summary of Distributions (Aho Table 3.5)** - [PDF](https://drive.google.com/open?id=1jHBCMtwRWYTj1op7_O87BKLX-J2ex5Z1)

+ _**Related Resources**_
  + Some guy who writes a blog on math and statistics, named John D. Cook, has some nice posts about different distributions and their relationships. The following gives an overview of how common distributions are related, with links to  other posts that discuss specific distributions in more detail. I have found some of these to be quite informative.
    + [*Distribution Relationships* - John D. Cook](https://www.johndcook.com/blog/distribution_chart/)
  + I also came across the following article by chance. It contains a crazy complicated diagram of how a large numer of discrete and continuous distributions are related. You don't need to try to read the article, but the diagram is pretty impressive!
    + [*Univariate Distribution Relationships* - Leemis and McQuestion, College of William and Mary](http://www.math.wm.edu/~leemis/2008amstat.pdf)

### Descriptive Summary Statistics, Resampling, ECDFs, Central Limit Theorem (Wednesday)

+ _**In-class Exercise: Student Presentations on Distributions**_
  + **Distributions Exercise Group Composite Answers** - [\[HTML\]](week_05/Distributions_students_20190930.html) - [\[PDF\]](week_05/Distributions_students_20190930.pdf) - [\[RMD\]](week_05/Distributions_students_20190930.Rmd)
    - _Note: formulas for distributions have been added at the beginning of each section; the rest of the content is compiled from student submissions._

+ _**Topic: Descriptive Summary Statistics**_
  + **Class Notes** - [PDF](week_05/XDAS_SummaryStats.pdf)
    + What are statistics?
    + Terminology, data types, notation
    + Measures of location or central tendency
    + Measures of scale
    + What's the best way to display my data?
  + **Background Reading**
    + Aho, Chapter 4.3: Statistics - [PDF](https://drive.google.com/open?id=1cvPWc2xXqXTLHH5Ycyy_cfsnspw-olXp)

+ _**Topic: Random Sampling and Central Limit Theorem**_
  + **Class Notes** - [RMD](week_05/XDAS_CLT_KEY_v2.Rmd) - [HTML](week_05/XDAS_CLT_KEY_v2.html) - [PDF](week_05/XDAS_CLT_KEY_v2.pdf)
    + CLT
    + Sampling from discrete and continuous distributions
    + Sample estimate of the population mean
    + Variation of the sample mean, SEM
    + Confidence intervals
  + **Background Reading**
    + Aho, Chapter 5: Interval Estimation: Sampling Distributions, Resampling Distributions, and Simulation Distributions - [PDF](https://drive.google.com/open?id=1j4uw2iNrPPpwmCGNBGx-cecbWKNJJGr_)
      + Sampling Distributions (5.2)
      + Sampling Distribution of the Sample Mean (5.2.2)
      + Central Limit Theorem (5.2.2.1)
      + Confidence Intervals (5.3)

### Practice with Estimating Fitting Parameters using the Bootstrap (Friday)

+ **Week 5 Recitation** - [Rmd](week_05/Week_5_Recitation.Rmd) - [HTML](week_05/Week_5_Recitation.html)
  + Class Excercise Data - [Group 1](week_05/group1_single_cell.tsv)
  + Class Excercise Data - [Group 2](week_05/group2_single_cell.tsv)
  + Class Excercise Data - [Group 3](week_05/group3_single_cell.tsv)

---

## Week 6: Null hypothesis testing, confidence intervals, t-distribution, t-tests

### Sampling, Null distribution, CLT, t-distribution, t-tests (Monday, Wednesday)

**Class Notes (cont'd)** - [RMD](week_05/XDAS_CLT_KEY_v2.Rmd) - [HTML](week_05/XDAS_CLT_KEY_v2.html) - [PDF](week_05/XDAS_CLT_KEY_v2.pdf)

**Background Reading**
  + Aho, Chapter 5 - [PDF](https://drive.google.com/open?id=1j4uw2iNrPPpwmCGNBGx-cecbWKNJJGr_)
    + Sampling Distributions (5.2)
    + Sampling Distribution of the Sample Mean (5.2.2)
    + Central Limit Theorem (5.2.2.1)
    + Confidence Intervals (5.3)  
  + **Data Analysis for the Life Sciences**  _Rafael Irizarry and Michael Love_ - [PDF and ePub](https://drive.google.com/open?id=1Rkk326tFkwLFduZCaYpRYwDf7Z3eHXjt) - [HTML](http://genomicsclass.github.io/book/)
    + **Chapter 1: Inference**
      + Null Hypothesis
      + Populations, Samples and Estimates
      + Central Limit Theorem and t-distribution
      + Confidence Intervals
      + t-tests

 **In-class Exercises**
  + [**Exercise 1: mouse high-fat diet**](week_06/index.md)
  + [**Exercise 3: one- and two-sample t-tests**](week_06/index.md)

### t-tests, P values, and Sample Size (Friday)

+ **Week 6 Recitation** - [Rmd](week_06/Week_6_Recitation.Rmd) - [HTML](week_06/Week_6_Recitation.html) - [PDF](week_06/Week_6_Recitation.pdf)

---

## Week 7: t-tests (cont'd), Type I and II Errors, Power, Nonparametric tests

+ _**Topic: P values and Confidence Intervals**_
  + **Background Reading**
    + [du Prel - Confidence interval or P value?](https://xdas.bio.nyu.edu/references/duPrel CI Pvalue 2009.pdf)
      Discusses the difference between significance and relevance
    + [Halsey - The Fickle P value generates irreproducible results](https://xdas.bio.nyu.edu/references/Halsey_P_value_NatMeth_2015.pdf)

+ _**Topic: Parametric Hypothesis Testing**_
  + **Background Reading**
    + Aho, Ch6.1-6.2 [PDF](https://drive.google.com/file/d/1kZQTT7dht1s_pP4UYLmUgVMaVvdVOIOf/view?usp=sharing)
      + Parametric Frequentist Hypothesis Testing

+ _**Topic: Type I and II Errors, Power, and Sample Adequacy**_
  + **Background Reading**
    + Aho, Ch6.3-6.5 [PDF](https://drive.google.com/file/d/1ciWta1gVMPgwrTLjIeGO-4__SqNz1KqK/view?usp=sharing)
      + Type I and II Error (6.3)
        + Power (6.4)
          + Sample Adequacy (6.4.1)
            + Power and Effect Size in *t*-tests
  + **Class Notes** - [HTML](week_07/Error_Power.html) - [PDF](week_07/Error_Power.pdf)

+ _**Topic: Paired and Non-parametric testing**_
  + **Background Reading**
    + Aho, Ch6.2 (parametric tests)
    + Aho, Ch6.6 [PDF](https://drive.google.com/open?id=1nZFbh2Mgkf5abk5TfSKTcuQdakeP--r0)
      + 6.6.2.1 (Wilcoxon sign rank test)
      + 6.6.2.2 (Wilcoxon rank sum test)
  + **Class Notes** - [HTML](week_07/ttest.html) - [RMD](week_07/ttest.Rmd)

+ **Week 7 Recitation** - [Rmd](week_07/Week_7_Recitation.Rmd) - [HTML](week_07/Week_7_Recitation.html) - [PDF](week_07/Week_7_Recitation.pdf)

---

## Week 8: Tabular Analyses and ANOVA

+ _**Topic: Tabular Analyses**_
  + **Background Reading**
    + Aho, Ch11 [PDF](https://drive.google.com/open?id=1FIldd7NHczH-6HMAdIkU45aIuYh00uhA)
    + Rosner, Ch10 [PDF](https://drive.google.com/open?id=1obyTAKVljhmxiT74AGWVrywH179u_rQT)
  + **Class Notes** - [HTML](week_08/TabularStats_2019.html) - [RMD](week_08/TabularStats_2019.Rmd)

+ _**Topic: ANOVA**_
  + **Background Reading**
    + Grafen and Hails - Chapter 1
    + Dalgaard - Chapter 7 [PDF](https://drive.google.com/open?id=1Tmi38WptGxu0xvsWanQ3n_q2fa_2ui9i)
  + **Class Notes**
    + ANOVA [HTML](week_08/ANOVA2_2019.html) - [RMD](week_08/ANOVA2_2019.Rmd)
    + LM Anova [HTML](week_08/LMAnova_2019.html) - [RMD](week_08/LMAnova_2019.Rmd)

---

## Week 9: ANOVA with multiple factors; the Tidyverse

+ _**Topic - Multiple factors and interactions**_

  + **Background Reading**

    + Grafen and Hails - Chapter 4 [PDF](https://drive.google.com/open?id=1WBpR4mXMweIsgHsl3rOlahPgu26k2kN1)
    + Grafen and Hails - Chapter 7 [PDF](https://drive.google.com/open?id=1WBNcvWtbKyHGd5t-qbmhT2x9MaiWPKM8)

  + **Class Notes**
    + LM Anova [HTML](week_08/LMAnova_2019.html) - [RMD](week_08/LMAnova_2019.Rmd)
    + Exercise [RMD](week_09/CO2_anova_question_blank.Rmd)

+ _**Topic - ggplot**_

  + **DataCamp Homework**

    + [Data Visualization with ggplot2 (Part 1)](https://www.datacamp.com/courses/data-visualization-with-ggplot2-1)

  + **Class Notes**
    + ggplot [HTML](week_09/ggplot.html) - [RMD](week_09/ggplot.Rmd)
    + Data Set [ggplot_gene_expression.tsv](week_09/ggplot_gene_expression.tsv)

+ _**Topic - dplyr**_

  + **DataCamp Homework**
    + [Introduction to the Tidyverse](https://www.datacamp.com/courses/introduction-to-the-tidyverse)
    + [Data Maipulation with dplyr in R](https://www.datacamp.com/courses/data-manipulation-with-dplyr-in-r)

  + **Class Notes**
    + dplyr [HTML](week_09/dplyr.html) - [RMD](week_09/dplyr.Rmd)
    + Data Set [DPLYR_EXPRESSION_DATA.tsv](week_09/DPLYR_EXPRESSION_DATA.tsv)
    + Metadata [DPLYR_SAMPLE_DATA.tsv](week_09/DPLYR_SAMPLE_DATA.tsv)

---

## Week 10: Distance Measures, Linear and Logistic Regression

+ _**Topic: Linear Regression**_
  + **Background Reading** Grafen and Hails, Chapter 2 [PDF](https://drive.google.com/open?id=1WELGiI0X1Pxx_YBlba7frHmdjNsJ6ctL)

  + **In-Class Exercise** [HTML](week_10/LM_exercise2019.html) - [RMD](week_10/LM_exercise2019.Rmd) - [BlankRMD](week_10/LM_exercise2019_blank.Rmd)

+ _**Topic: Distance Measures**_
  + **Class Notes** [HTML](week_10/XDAS_Distance_2019.html) - [PDF](week_10/XDAS_Distance_2019.pdf)

+ _**Topic: Logistic Regression**_
  + **Background Reading** Introduction to Statistical Learning, Chapter 4.1-4.3 [PDF](https://drive.google.com/open?id=1-vEB3UlSjEEvudsrqzZiAZEXkAUShRhg)
  + **Class Notes from 2018 (to be updated)** [PDF](week_10/XDAS_Logistic_Regression_2018.pdf)

---

## Week 11: Logistic Regression (cont'd) and Experimental Design

+ _**Topic: Logistic Regression**_
  + **In-Class Exercise** [HTML](week_10/WisconsinCancerLR.html) - [RMD](week_10/WisconsinCancerLR.Rmd) - [BlankRMD](week_10/WisconsinCancerLR_blank.Rmd)
    + Link to [data.csv](week_10/data.csv)

+ _**Topic: Cross Validation**_
  + Link to Andrew Moore's website [HTML](http://www.cs.cmu.edu/~awm/tutorials.html)
  + Link to presentation [PDF](week_11/CrossValidation.pdf)

+ _**Topic: Experimental Design**_
 + **Background Reading**
  + Grafen and Hails, Chapter 5
  + Batch effects - [Leek Nature Reviews 2010 (PDF)](https://xdas.bio.nyu.edu/references/Leek_batch_effects_NatRev_2010.pdf)
 + Class Notes [HTML](week_11/experimental_design.html)
 + Exercise dataset: npk
    + Use the **npk** dataset in R to:
      + Compare the results using each variable separately and again with the blocking factor.

+ **Week 11 Recitation**

  + **Class Notes**
    + Metrics [HTML](week_11/Recitaton_Metrics.html) - [RMD](week_09/Recitaton_Metrics.Rmd)
    + Training Data Set [METRIC_DATA.tsv](week_11/METRIC_DATA.tsv)
    + Test Data Set [DPLYR_SAMPLE_DATA.tsv](week_11/METRIC_TEST.tsv)
    + Cohort 1 Data Set [METRIC_COHORT_1.tsv](week_11/METRIC_COHORT_1.tsv)
    + Cohort 2 Data Set [METRIC_COHORT_2.tsv](week_11/METRIC_COHORT_2.tsv)
    + Cohort 3 Data Set [METRIC_COHORT_3.tsv](week_11/METRIC_COHORT_3.tsv)

---

## Week 12: Functional Enrichment Analysis and Multiple Hypothesis Testing

+ _**Topic: Functional Enrichment Analysis**_
  + **Background Reading**
    + Khatri et al.: 10 years of pathway analysis - [PDF](https://xdas.bio.nyu.edu/references/Khatri_PathwayAnalysis_PlosCompBiol_2012.pdf)
  + **Class Notes** - [PDF](week_12/KCG_XDAS_FunctionalAnnotation_FA2019.pdf)
  + **Exercise** - Bioconductor and GO analysis [HTML](week_12/Bioconductor_GSEA.html) - [RMD](week_12/Bioconductor_GSEA.Rmd)
    + RNAseq2019_deseq_results [link](week_12/RNAseq2019_deseq_results.txt)
    + normvalues [link](week_12/normvalues.txt)

+ _**Topic: Multiple Hypothesis Testing**_
  + **Background Reading**
    + Handbook of Biological Statistics - [HTML](http://www.biostathandbook.com/multiplecomparisons.html) - [PDF](week_12/Multiplecomparisons-HandbookBiologicalStatistics.pdf)

+ **Week 12 Recitation**

  + **Class Notes**
    + Multiple Hypotheis Tests [HTML](week_12/MultipleHypothesis.html) - [RMD](week_12/MultipleHypothesis.Rmd)
    + Data [HW9_EXPRESSION_DATA.tsv.gz](week_12/HW9_EXPRESSION_DATA.tsv.gz)
    + Metadata [HW9_SAMPLE_DATA.tsv](week_12/HW9_SAMPLE_DATA.tsv)

---

## Week 13: Bayes and Thanksgiving

+ _**Topic: Bayesian Statistics**_
  + **Class Notes** - [HTML](week_13/Bayes.html) [RMD](week_13/Bayes.Rmd)
  + **Class Notes Data** - [Bayes_Data.tsv](week_13/Bayes_Data.tsv) [Bayes_Update.tsv](week_13/Bayes_Update.tsv)

---

## Week 14: Normalization, Clustering and Principal Components Analysis

+ _**Topic: Normalization**_
  + **Class Notes** - [HTML](week_14/XDAS_RNA-seq_Normalization.html)
  + **Class Exercise** - [HTML](week_14/RNA-seq-fpkm-tpm.md) [RMD](week_14/RNA-seq-fpkm-tpm.Rmd)
    - [GFF annotation file](Athaliana.sorted.gff)

+ _**Topic: Clustering**_
  + **Background Reading**
    + Review: Distance (class notes from Week 10) - [HTML](week_10/XDAS_Distance_2019.html) - [PDF](week_10/XDAS_Distance_2019.pdf)
    + Draghici Chapter 11: Clustering (also includes distance measures) - [PDF](https://drive.google.com/file/d/0BxPAku5Rir7LNHVXWmRjaHAtOFU/view?usp=sharing)
    + Intro to Statistical Learning Ch. 10.3: Clustering - [PDF](https://drive.google.com/file/d/18gOdl2yCquJW_9DtEfrg3cbQVaATtAFF/view?usp=sharing)
  + **Lecture Notes** - [PDF](week_14/XDAS_Clustering_2019.pdf) [HTML](week_14/XDAS_Clustering_2019.html)
    + _Slide presentation_ - [PDF](week_14/Clustering_slides.pdf)
  + **Class Exercise** - Clustering By Hand [HTML](week_14/ClusteringByHand.html) - [RMD](week_14/ClusteringByHand.Rmd)

+ _**Topic: Principal Components Analysis**_
  + **Background Reading**
    + Intro to Statistical Learning Ch. 6.3: Dimensional Reduction - [PDF](https://drive.google.com/file/d/1-fxueybcKca2N1xlK9j4K__xtLhh0tdy/view?usp=sharing)
  + **Class Notes** - [PDF](week_14/Dimensional_Reduction_PCA.pdf) [HTML](week_14/Dimensional_Reduction_PCA.html)

+ _**Topic: t-distributed Stochastic Neighbor Embedding (tSNE)**_
      + **Class Notes** - [PDF](week_14/Visualization_tSNE.pdf) [HTML](week_14/Visualization_tSNE.html)

+ _**Recitation: Principal Components Analysis**_
  + **Class Notes** - [RMD](week_14/PCA.Rmd) [HTML](week_14/PCA.html)
  + **Data** - [HW9_EXPRESSION_DATA.tsv](week_14/HW9_EXPRESSION_DATA.tsv) [HW9_SAMPLE_DATA.tsv](week_14/HW9_SAMPLE_DATA.tsv)
  
---

## Week 15: Simple RNA-seq workflow

+ _**RNA-seq: Nitrate Response Arabidopsis**_
  + **The workflow** RNAseq2019 [HTML](week_15/RNAseq2019_subread.html) [RMD](week15/RNAseq2019_subread.Rmd)
  + **Fasta File** 
    + Arabidopsis.fa [HTML](https://drive.google.com/open?id=1_cww95x0irnj-IvPWb692aokR-isszCp)
  + **Gene annotations**
    + Arabidopsis.gtf [HTML](https://drive.google.com/open?id=1_mp0ZQuL58MByiOf7J1J_lCDdY4QSRUd)
    + gene_description_20131231.txt [HTML](https://drive.google.com/open?id=1adYjs59vA3LxTL4rFl5VSCtKUkv4dQ_c)
  + **Fastq Flies** These files are close to 1GB each
    + KCL_1.fastq [HTML](https://drive.google.com/open?id=1_HR8SPQ7iaddK2M16bleclZRq2LKrhuu)
    + KCL_2.fastq [HTML](https://drive.google.com/open?id=1_QVhdK_akbcCxR8Oz9nRA5w5fF3rrKsp)
    + NO3_1.fastq [HTML](https://drive.google.com/open?id=1_WyQGRi0mjSjmIAx3LwymWgq2lj6Oqbi)
    + NO3_2.fastq [HTML](https://drive.google.com/open?id=1_a7DGxRT1bpjZuCPoM-txnzIYS6PTsUu)
  
