---
title: Objects
parent: Data Structures
grand_parent: Learning R
nav_order: 1
has_children: false
---

# R Objects
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

# Data Types

R can store several different types of data:

+ Numeric : numbers (integers or floating-point)
+ Character: Alphanumeric values
+ Logical : True/False
+ Complex : complex numbers (i = square root of -1)
+ Raw : Bytes (for example images)

These data types can be stored in different kinds of containers, or "objects", in the R environment.

# Objects

Objects are stored by giving them a name and assigning values to them, so that they can be retrieved and modified at any time. Objects can be very simple or very complex data structures, or lines of code such as a function.

The simplest kind of object is just a single variable that holds a single value (e.g. a number or a character string). It's actually a vector of length one. The important classes of data structures that you will need to know about when working with data are:

+ Vectors
+ Lists
+ Matrices
+ Data Frames


# Accessing Objects

In order to see the contents of an object, you can simply type the name of the object, or use the `print()` command.

In RStudio, all variables in the environment may be viewed using the **Environment** panel. Clicking on an object will perform the same action as typing `View(object_name)` on the commandline, which will display the contents of the variable in a new tab in the Editor pane.

All objects in the current environment are also stored in an `.Rdata` file.

Beware: names of objects are case sensitive! If you type a word that is not an object, you will get an error.

```
# a string that has not been assigned to a container
> "Hello"
[1] "Hello"
```
```
> # this is a named object
> Hello <- "hello world!"
> Hello
[1] "hello world!"
```
```
# another way to view the contents of Hello
> print(Hello)
[1] "hello world!"
```
```
> # this is not an object!
> hello
Error: object 'hello' not found
```

In a case when not all the code can fit in one line, or you want to make the command more readable, you can press **Return** in the middle of a command. R will detect that the command is incomplete and will present a `+` prompt:

```
> # a command spread across two lines
> goodbye =
+ "bye!"
> goodbye
[1] "bye!"
```


# Variable Assignment

Values can be assigned to an object in three ways, as shown below:

```
> # A left- or right-arrow
> x <- 1
> x
[1] 1
>
> 2 -> y
[1] 2
```

It is recommended to adopt the convention of always using a left-arrow.

```
> # A single equals sign
> # Note: Can only be assigned with the variable name on the left!
> z = 1
> z
[1] 1
```

```
> # The assign function
> # Note: the variable name needs to be enclosed in single or double quotes
> assign("y", 3)
> y
[1] 3
>
> assign('y', 6*7) # the answer to the universe and everything
[1] 42
```

The `<-` syntax is preferred by many practitioners of R in order to avoid confusion between
a single equals sign `=`, which is an assignment operator, and a double equals sign, `==`,
which is used to compare two things with each other.

However, since most other languages use `=` for assignment, this syntax is commonly used as well.


# Object Class and Structure

You can find out what kind of object a variable contains, and what its structure is, using the `class()` and `str()` commands:

```
> # a vector
> my_vector = c(1:10)
> my_vector
 [1]  1  2  3  4  5  6  7  8  9 10
>
> class(my_vector)
[1] "integer"
>
> str(my_vector)
 int [1:10] 1 2 3 4 5 6 7 8 9 10
```

```
> x = data.frame("diameter" = 1:10)
> x
   diameter
1     1
2     2
3     3
4     4
5     5
6     6
7     7
8     8
9     9
10   10
>
> class(x)
[1] "data.frame"
>
> str(x)
'data.frame':	10 obs. of  1 variable:
 $ size: int  1 2 3 4 5 6 7 8 9 10
 ```
