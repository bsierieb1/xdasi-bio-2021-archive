---
title: Getting Help
layout: default
parent: R and RStudio
nav_order: 5
has_children: false
---

# Getting Help with Functions and Features

Below are some examples of how to get help about a command.

``` r
# Different commands to get help for a command
help(sum)
?sum


# In case you don’t know the full name of the command
apropos("mean")
```

    ##  [1] ".colMeans"     ".rowMeans"     "colMeans"      "kmeans"       
    ##  [5] "mean"          "mean.Date"     "mean.default"  "mean.difftime"
    ##  [9] "mean.POSIXct"  "mean.POSIXlt"  "meanabsdev"    "rowMeans"     
    ## [13] "weighted.mean"

``` r
# To only get an example of how to use the command
example("mean")
```

    ##
    ## mean> x <- c(0:10, 50)
    ##
    ## mean> xm <- mean(x)
    ##
    ## mean> c(xm, mean(x, trim = 0.10))
    ## [1] 8.75 5.50
