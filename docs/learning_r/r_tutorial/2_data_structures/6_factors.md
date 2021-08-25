---
title: Factors
parent: Data Structures
grand_parent: R Tutorial
nav_order: 6
has_children: false
---

# NEEDS TO BE REVISED - not that informative
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---


YouTube Video - <https://youtu.be/VOcHEJvkJLw>

Factors are a way defining groupings in your data. For example they are used to define control and treatment samples. It is easy to convert a character vector into a factor by simply providing group names in the same order as the samples.

Factors are very helpful when you want to perform an operation to values within the groups. The example below demonstrates how you can calculate the `mean` of the values in each group. We will cover `tapply` later in the lecture.

``` r
expgroup = c("groupA",
             "groupB",
             "groupA",
             "groupC",
             "groupC",
             "groupB",
             "groupA",
             "groupA")

expgroup<-factor(expgroup)

expgroup
```

    ## [1] groupA groupB groupA groupC groupC groupB groupA groupA
    ## Levels: groupA groupB groupC

``` r
levels(expgroup)
```

    ## [1] "groupA" "groupB" "groupC"

``` r
table(expgroup)
```

    ## expgroup
    ## groupA groupB groupC
    ##      4      2      2

``` r
expvalues = c(2,5,7,3,8,0,9,0)

tapply(expvalues, expgroup, mean)
```

    ## groupA groupB groupC
    ##    4.5    2.5    5.5
