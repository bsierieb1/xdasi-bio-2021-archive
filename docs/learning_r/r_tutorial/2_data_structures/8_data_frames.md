---
title: Data Frames
parent: R Tutorial
grand_parent: Learning R
nav_order: 8
has_children: false
---

# R Objects: Data Frames
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---


YouTube Video - <https://youtu.be/W0Pp2Thp6to>

A drawback to matrices is that all the values have to be the same mode (either all numeric or all character). If you try to combine a combination of types, it will defualt to character because numbers can be treated as characters but the characters can not be treated as numbers.

A dataframe is composed of vectors of the same length but can be of different modes. This makes it perfect structure for mixed-type biomedical data. Specific columns can be accessed using the `$` or traditional `[]` way for matrix.

-   Dataframe$column
-   Dataframe\[,1\]

Row labels can be modified using the rownames() function and similarly column labels can be modified using colnames() function

``` r
species<-c("setosa","setosa",
          "versicolor","versicolor",
          "virginica","virginica")

#create a dataframe using the data.frame command
iris.df<-data.frame(sepal.width, sepal.length, species)

#Use $ to specific a column
table(iris.df$species)
```

    ##
    ##     setosa versicolor  virginica
    ##          2          2          2

``` r
#Use same method as matrix
iris.df[,2]
```

    ## [1] 5.1 4.9 7.0 6.4 6.3 5.8

``` r
#notice the class of the column is a factor.
#by default data.frame converts character vectors to factors
class(iris.df[,"species"])
```

    ## [1] "factor"

``` r
#notice that a row from a dataframe is still a dataframe
# because it contains data of multiple types.
class(iris.df[2,])
```

    ## [1] "data.frame"

``` r
#an excellent functions to get a quick summary
summary(iris.df)
```

    ##   sepal.width     sepal.length         species
    ##  Min.   :2.700   Min.   :4.900   setosa    :2  
    ##  1st Qu.:3.050   1st Qu.:5.275   versicolor:2  
    ##  Median :3.200   Median :6.050   virginica :2  
    ##  Mean   :3.150   Mean   :5.917                 
    ##  3rd Qu.:3.275   3rd Qu.:6.375                 
    ##  Max.   :3.500   Max.   :7.000

``` r
#assigning row names to a data frame.
rownames(iris.df)<-c("p1","p2","p3","p4","p5","p6")

iris.df
```

    ##    sepal.width sepal.length    species
    ## p1         3.5          5.1     setosa
    ## p2         3.0          4.9     setosa
    ## p3         3.2          7.0 versicolor
    ## p4         3.2          6.4 versicolor
    ## p5         3.3          6.3  virginica
    ## p6         2.7          5.8  virginica
