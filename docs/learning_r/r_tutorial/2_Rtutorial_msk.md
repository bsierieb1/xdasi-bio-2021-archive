---
title: Manny's R Tutorial
parent: R Tutorial
grand_parent: Learning R
has_children: false
nav_exclude: true
---

# NEED TO REORGANIZE -- a lot of this is now redundant with other pages
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---





### R Editor and Scripts

#### YouTube Video: [R Scripting](https://youtu.be/NbBOss9CjuE)

RStudio comes with and R script editor. Open editor by selecting "New Script" from the File Menu. Similar to Notepad, it will allow you to type and save code as text. It is not recommended to copy and paste from applications such as MS Word or even PDFs. When you paste the code into the console or the script, it can insert funny characters.

Once you have a list of commands that you want to execute, you save it with a **.R** extension. Any R script can be **sourced** in using the `source()` function. This essentially executes the commands in the R script line by line.

![](RStudio/Slide8.png)


### R Objects

#### YouTube Video: [R Objects](https://youtu.be/8GXsn8qd7Gc)

An R object that is stored in the R environment is simply a container for data or lines of code. Objects can be named so they can be accessed at any point. There are three ways to assign data to a named object:

``` r
x <- 1
x
```

    ## [1] 1

``` r
assign("y", 1)
y
```

    ## [1] 1

``` r
z = 1
z
```

    ## [1] 1

You can add comments to your code by preceding them with the \# sign. Any text to the right of the hashtag will be ignored by the interpreter (i.e. it will not be executed as code).

``` r
x<-1 # everything on the right side is a comment.
```

## R Functions

Functions contain lines of pre-written code that perform some task. They can be used to:
- Gather information about R environment
- Change properties of an environment
- Perform tasks on one or more data structures

Below is an example of the function sum():

``` r
a = 6
b <- 9
c = 15
55 -> e # notice that here the variable is on the right.
        # this only works with the arrow operator
d = sum(a,b,c,e)
d
```

    ## [1] 85


## Basic Syntax

In order to see the contents of an object, you can simply type the name of the object. If you type a word that is not an object, you will get an error. Names of objects are case sensitive, so "Print" is not the same as "print":

``` r
# Try typing the word hello
hello
```

In a case when not all the code can fit in one line, or you want to make the command more readable, you can press **Return** and R will simply start the prompt with `+`:

``` r
x<-1
print(
x)
```

    ## [1] 1


## Getting Help with Functions and Features

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
