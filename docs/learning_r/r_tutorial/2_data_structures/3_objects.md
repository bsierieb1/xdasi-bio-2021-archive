---
title: Objects
parent: Data Structures
grand_parent: R Tutorial
nav_order: 3
has_children: false
---

# R Objects: Data Types and Variables
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

# Data Types, Variables, and Objects

Container for a piece of data or lines of code Objects can be named so they can be accessed at any point. Three ways to assign data to a named object:

```r
x <- 1
x
```

```
## [1] 1
```

```r
assign("y", 1)
y
```

```
## [1] 1
```

```r
z = 1
z
```

```
## [1] 1
```

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


# R objects: Modes

    ### The **type** of the components.

    Numeric : numbers

    Complex : complex numbers

    Logical : True/False

    Character: Alphanumeric values

    Raw : Bytes


# The class of an object

    Class of a vector is the same as a mode Other classes: "matrix", "array", "factor" and "data.frame" These classes help R act like an object-oriented language. Plot function for an object of class matrix is different then plot for numeric vector. Can use "unclass\(\)" if you do not want to treat the object as its a class
