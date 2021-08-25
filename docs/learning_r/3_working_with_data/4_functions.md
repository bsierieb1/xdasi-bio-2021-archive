---
title: Functions
parent: Learning R
nav_order: 4
has_children: false
---

# R Functions
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

# R Functions

Functions contain lines of pre-written code that perform some task. They can be used to:
- Gather information about or change properties of the R environment
- Perform tasks on one or more data structures

Below is an example of the function `sum()`:

```
> a = 6
> b <- 9
> c = 15
> 55 -> e # notice that here the variable is on the right.
          # this only works with the arrow operator
> d = sum(a,b,c,e)
>
> d
[1] 85
```

# Calling Functions


# Built-in Functions


# Getting Help with Functions

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


# Defining Functions


# Some Useful Functions


-   `mode()` and `typeof()` - provide mode and type of the object.
-   `attributes()` - provides useful information such as dimensions and names.
-   `as()` - can be used to coerce one object type to another.
-   `sample()` - get a random sample of numbers
-   `sort()` – return the values in ascending order
-   `order()` – return a numeric vector of the element position in ascending order
-   `paste()` – Create a character vector by concatenating two other vectors
-   `print()` – Prints content of an object to screen
-   `range()` – Returns minimum and maximum value of a vector
-   `t()` – Transpose a matrix or dataframe


```{r}
# notice the difference between sort and order
# one returns the value, the other returns the position
sepal.width
```

    ## [1] 3.5 3.0 3.2 3.2 3.3 2.7

``` r
sort(sepal.width)
```

    ## [1] 2.7 3.0 3.2 3.2 3.3 3.5

``` r
order(sepal.width)           
```

    ## [1] 6 2 3 4 5 1

```{r}
#convert a vector to a matrix.
as.matrix(sepal.width)
```

    ##      [,1]
    ## [1,]  3.5
    ## [2,]  3.0
    ## [3,]  3.2
    ## [4,]  3.2
    ## [5,]  3.3
    ## [6,]  2.7

```{r}
#converts a vector to a data frame.
as.data.frame(sepal.width)
```

    ##   sepal.width
    ## 1         3.5
    ## 2         3.0
    ## 3         3.2
    ## 4         3.2
    ## 5         3.3
    ## 6         2.7

``` r
# repeat elements in a vector
rep(sepal.width, times=5)
```

    ##  [1] 3.5 3.0 3.2 3.2 3.3 2.7 3.5 3.0 3.2 3.2 3.3 2.7 3.5 3.0 3.2 3.2 3.3
    ## [18] 2.7 3.5 3.0 3.2 3.2 3.3 2.7 3.5 3.0 3.2 3.2 3.3 2.7

```{r}
rep(sepal.width, each=5)
```

    ##  [1] 3.5 3.5 3.5 3.5 3.5 3.0 3.0 3.0 3.0 3.0 3.2 3.2 3.2 3.2 3.2 3.2 3.2
    ## [18] 3.2 3.2 3.2 3.3 3.3 3.3 3.3 3.3 2.7 2.7 2.7 2.7 2.7

```{r}
#quick way to generate numbers
1:30 #(shortcut for writing c(1,2,3 …. 28,29,30))
```

    ##  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23
    ## [24] 24 25 26 27 28 29 30

``` r
2*1:15 #(shortcut for c(2,4,6, … 28, 30))
```

    ##  [1]  2  4  6  8 10 12 14 16 18 20 22 24 26 28 30

```{r}
#seq(from, to, by, length)
seq(-5, 5, by=.2) -> s3
s3
```

    ##  [1] -5.0 -4.8 -4.6 -4.4 -4.2 -4.0 -3.8 -3.6 -3.4 -3.2 -3.0 -2.8 -2.6 -2.4
    ## [15] -2.2 -2.0 -1.8 -1.6 -1.4 -1.2 -1.0 -0.8 -0.6 -0.4 -0.2  0.0  0.2  0.4
    ## [29]  0.6  0.8  1.0  1.2  1.4  1.6  1.8  2.0  2.2  2.4  2.6  2.8  3.0  3.2
    ## [43]  3.4  3.6  3.8  4.0  4.2  4.4  4.6  4.8  5.0

```{r}
s4 <- seq(length=51, from=-5, by=.2)
s4
```

    ##  [1] -5.0 -4.8 -4.6 -4.4 -4.2 -4.0 -3.8 -3.6 -3.4 -3.2 -3.0 -2.8 -2.6 -2.4
    ## [15] -2.2 -2.0 -1.8 -1.6 -1.4 -1.2 -1.0 -0.8 -0.6 -0.4 -0.2  0.0  0.2  0.4
    ## [29]  0.6  0.8  1.0  1.2  1.4  1.6  1.8  2.0  2.2  2.4  2.6  2.8  3.0  3.2
    ## [43]  3.4  3.6  3.8  4.0  4.2  4.4  4.6  4.8  5.0



# Apply Family

    The functions apply(), tapply() and lapply() allows you to perform a
    specified function across array objects.

    -   apply() – first provide the array then whether to apply the function by
        row (1), column(2) or both (c(1,2), finally the function. tapply() –
        similar to apply but pass a factor vector instead of row or column
        lapply() – simply provide a list and the function to apply to each
        vector in the list. Result is a list. sapply() – same as lapply() but
        returns result in original data structure

```{r} sampleData<-matrix(sample(20:160, 20, replace=T)/10, ncol=4, nrow=5)

    sampleData.df<-as.data.frame(sampleData) colnames(sampleData.df)<-c("ctr1l",
    "ctrl2", "trt1", "trt2")

    rownames(sampleData.df)<-c("gene1", "gene2", "gene3", "gene4", "gene5")

```

Your sampleData will be different because it is being generated randomly

```{r} sampleData
```

We can calculate the average of each row by simply applying the mean
    function to every row.

```{r} apply(sampleData, 1, mean)
```

We can also use the `tapply` function to apply a function based on their
    groupings.

```{r} expgroups = factor(c("ctrl", "ctrl", "trt", "trt"))

    tapply(as.numeric(sampleData.df[1,]), expgroups, mean)
```

If we treat the dataframe as a list we can use lapply

```{r} lapply(sampleData.df, mean)
```

You can also apply a tapply function.

```{r} apply(sampleData.df, 1, tapply, expgroups, mean)
```

Notice that here we needed to provide additional arguments to the tapply
    function. Since the first one is simply the data, which the ``apply()``
    function is providing, we don't need to worry about it. The second argument
    for using tapply is the factor, we can simply add that to parameters and
    finally also the function ``mean()`` itself.

    The results are actually returned column by column. In case there are too
    may columns, remember you can always transpose ``t()`` your dataset.

```{r} t(apply(sampleData.df, 1, tapply, expgroups, mean))

```
