---
title: R Intro
parent: R Tutorial
grand_parent: Learning R
nav_order: 1
has_children: false
---

# Introduction to R -- NEED TO REORGANIZE - TOO MUCH IN THIS PAGE
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

# R Console Prompt

R is used by typing in a list of commands Commands are entered after the prompt **&gt;** After you type a command and its arguments, simply press the Return Key Separate commands using **;** or **newline** \(enter\)

```r
print("hello")
```

```
## [1] "hello"
```

# R session

## Default Workspace

Workspace contains the different R objects only \(not the code\) The name of the default workspace is saved as .Rdata To load .RData, set the directory where .RData is located as current directory and then select to "load Default workspace"

## Working Directory

It is a good idea to have separate workspace and history for different projects saved in different directories\(folders\)

```r
#Getting you working directory
(CWD=getwd())
```

```
## [1] "/Users/manpreetkatari/Google Drive/Rworkshop"
```

```r
#Create a folder to use for working directory
dir.create("R_project_folder")
```

```
## Warning in dir.create("R_project_folder"): 'R_project_folder' already
## exists
```

```r
#Changing your working directory
setwd("R_project_folder")

#List the contents of your working directory
dir()
```

```
## [1] "Icon\r"
```

```r
#return to your directory
setwd(CWD)

#Save a workspace
save.image("Name_of_workspace.RData")

#Load a workspace
load("Name_of_workspace.RData")
```

# R editor and Scripts

A history of your commands is saved and it can be accessed by using the up and down keys. Your history is saved as .Rhistory in your working directory. It is a good idea to save your successful commands in a separate file because your history will also contain your mistakes. Open editor by selecting "New Script" from the File Menu. Similar to Notepad, it will allow you to type and save code as text. MS Word is not a good choice for this because when you paste it can insert funny characters. You can execute an entire R script by using the "Source R code" using source\(\) function.

# Familiar commands that work in R

### Ctrl-c : copy

### Ctrl-v : paste

### Ctrl-1 : clear the console

### Esc : stop

# Packages

Packages such as Bioconductor are available on CRAN. They contain specialized functions and data that can be used for your analysis.

```r
#To view the names of the packages installed
library()

#To load a library.
library(cluster)

#View all packages loaded
search()
```

```
##  [1] ".GlobalEnv"        "package:cluster"   "package:stats"    
##  [4] "package:graphics"  "package:grDevices" "package:utils"    
##  [7] "package:datasets"  "package:methods"   "Autoloads"        
## [10] "package:base"
```

```r
#To install packages
install.packages("multcomp",repos='http://cran.us.r-project.org')
```

```
##
## The downloaded binary packages are in
##  /var/folders/q3/yzvt5fr95056x4frykp7p6kh0000gn/T//RtmpY3qId4/downloaded_packages
```

```r
# multcomp is just an example, replace it with the name of the package you would like to install
###### ***** NOTE ***** ########################################
##### install.packages will not work in interactive session ####
```

# R object

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

# R functions

Functions contain lines of pre-written code that performs some task. Gather information about R environment Change properties of an environment Perform task on one or more data structures Below is an example of the function sum\(\)

```r
a = 6
b <- 9
c = 15
55 -> e
d = sum(a,b,c)
d
```

```
## [1] 30
```

# Basic Syntax

In order to see the contents of an object you can simply type the name of the object. If you type a word that is not an object you will get an error Names of objects are case sensitive so "Print" is not the same as "print"

```r
#try typing the word hello
hello
```

You can add comment to your code without it being computed by preceding it with \#.

```r
x<-1 #everything on the right side is a comment.
```

In a case when not all the code can fit in one line, or you want to make the command more readable, you can press “Return” and R will simply start the prompt with +

```r
x<-1
print(
x)
```

```
## [1] 1
```

# R objects: Modes

### The **type** of the components.

Numeric : numbers

Complex : complex numbers

Logical : True/False

Character: Alphanumeric values

Raw : Bytes

# The class of an object

Class of a vector is the same as a mode Other classes: "matrix", "array", "factor" and "data.frame" These classes help R act like an object-oriented language. Plot function for an object of class matrix is different then plot for numeric vector. Can use "unclass\(\)" if you do not want to treat the object as its a class

# R objects: Vectors

Most basic data structure Sequence of data that can be numbers, characters and also logical. Scalar is a vector of length 1. Vector of more than one element can be created using c\(\) function. Elements of vector must be same type and mode. Characters must be enclosed in either single or double quotes Missing data can be represented as NA

## R objects: Character Vectors

Denoted by double quotes "x-values", "New iteration results"

```r
Escape characters \
\\  to use \ in string
\" to use " in string
\n new line character
\t tab character
\b backspace character
```

## R object: Logical Vectors

### A vector with three possible values:

TRUE, FALSE, NA \(Not available\)

### Are generated by conditions.

temp&lt;- x &gt; 13

### List of Logical operators

&lt;, &lt;=, &gt;, &gt;=, == for exact equality != for inequality & \(and\) \| \(or\)

### Vector examples

```r
v <- c(4,2,3,8,2,2,5)
v
```

```
## [1] 4 2 3 8 2 2 5
```

```r
is(v)
```

```
## [1] "numeric" "vector"
```

```r
v <- c("a","b","c","d","e")
v
```

```
## [1] "a" "b" "c" "d" "e"
```

```r
is(v)
```

```
## [1] "character"           "vector"              "data.frameRowLabels"
## [4] "SuperClassMethod"
```

```r
v <- c(4,2,3,8,2,2,NA,5)
v
```

```
## [1]  4  2  3  8  2  2 NA  5
```

```r
#changing values in a vector
v[4]
```

```
## [1] 8
```

```r
v[4] = 10

v < 4
```

```
## [1] FALSE  TRUE  TRUE FALSE  TRUE  TRUE    NA FALSE
```

```r
v[1:3]
```

```
## [1] 4 2 3
```

```r
v[-c(1,5,8)]
```

```
## [1]  2  3 10  2 NA
```

```r
# equivalent expressions
temp = v < 4
v[temp]
```

```
## [1]  2  3  2  2 NA
```

```r
# same as below
v[v<4]
```

```
## [1]  2  3  2  2 NA
```



# R objects: Arrays and Matrices

Array: A multiply subscripted collection of data entries Matrix: is a two-dimensional array. Matrix can be created by using the matrix\(\) function or the array\(\) function. The first argument for both functions is a data vector. Matrix then requires nrow and ncol arguments where as array requires a vector defining the dim property of the array The dim\(\) function can be used to convert a vector to a matrix.

```r
mat<-matrix(c(4,12,1,5,21,7,10,7,2,19,24,3), nrow=4, ncol=3)
mat
```

```
##      [,1] [,2] [,3]
## [1,]    4   21    2
## [2,]   12    7   19
## [3,]    1   10   24
## [4,]    5    7    3
```

```r
class(mat)
```

```
## [1] "matrix"
```

```r
mat[2,3]
```

```
## [1] 19
```

```r
mat<-array(c(4,12,1,5,21,7,10,7,2,19,24,3), dim=c(4,3))

mat
```

```
##      [,1] [,2] [,3]
## [1,]    4   21    2
## [2,]   12    7   19
## [3,]    1   10   24
## [4,]    5    7    3
```

```r
x=c(4,12,1,5,21,7,10,7,2,19,24,3)

dim(x)=c(4,3)

x
```

```
##      [,1] [,2] [,3]
## [1,]    4   21    2
## [2,]   12    7   19
## [3,]    1   10   24
## [4,]    5    7    3
```

## Different ways to index

```r
#A vector of positive integral quantities.
x[1:10]
```

```
##  [1]  4 12  1  5 21  7 10  7  2 19
```

```r
#specific rows, and all columns
mat[c(1,3,4),]
```

```
##      [,1] [,2] [,3]
## [1,]    4   21    2
## [2,]    1   10   24
## [3,]    5    7    3
```

```r
#A logical vector
mat[c(TRUE,TRUE,FALSE),]
```

```
##      [,1] [,2] [,3]
## [1,]    4   21    2
## [2,]   12    7   19
## [3,]    5    7    3
```

```r
v[v<5]
```

```
## [1]  4  2  3  2  2 NA
```

```r
#Vector of character strings
fruit <- c(5, 10, 1, 20)
names(fruit) <- c("orange", "banana", "apple", "peach")
lunch <- fruit[c("apple","orange")]
lunch
```

```
##  apple orange
##      1      5
```

## R objects: Creating matrices using cbind\(\) and rbind\(\)

Arguments to cbind\(\) must be either vectors of any length, or matrices with the same column size, that is the same number of rows. For vectors that are shorter than the matrix, the values are cyclically added to the matrix

```r
bp<-c(132,144,151,120,136)
ht<-c(183,162,181,168,165)
wt<-c(192,210,240,187,212)
mat<-cbind(bp, ht, wt)
mat
```

```
##       bp  ht  wt
## [1,] 132 183 192
## [2,] 144 162 210
## [3,] 151 181 240
## [4,] 120 168 187
## [5,] 136 165 212
```

```r
mat[3,]
```

```
##  bp  ht  wt
## 151 181 240
```

```r
#colnames of matrix
colnames(mat)
```

```
## [1] "bp" "ht" "wt"
```

```r
rownames(mat)
```

```
## NULL
```

```r
rownames(mat) = c("p1","p2","p3","p4","p5")

mat["p4","bp"] = 140

# get logical matrix
mat < 150
```

```
##       bp    ht    wt
## p1  TRUE FALSE FALSE
## p2  TRUE FALSE FALSE
## p3 FALSE FALSE FALSE
## p4  TRUE FALSE FALSE
## p5  TRUE FALSE FALSE
```

```r
mat [ mat < 150]
```

```
## [1] 132 144 140 136
```

# R objects: Data Frames

A drawback to matrices is that all the values have to be the same mode. A dataframe is composed of vectors of the same length but can be of different modes. This makes it perfect structure for mixed-type biomedical data Header of the dataframe can be obtained/set using names\(\) function. Specific columns can be accessed using the $ or traditional way for matrix. Dataframe$column Dataframe\[,1\] Row labels can be modified using the rownames\(\) function and similarly column labels can be modified using colnames\(\) function

```r
bg<-c("O","O","A","B","AB")
df<-data.frame(bg, bp, ht, wt)

table(df$bg)
```

```
##
##  A AB  B  O
##  1  1  1  2
```

```r
df[,2]
```

```
## [1] 132 144 151 120 136
```

```r
class(df[,2])
```

```
## [1] "numeric"
```

```r
class(df[2,])
```

```
## [1] "data.frame"
```

```r
summary(df)
```

```
##   bg          bp              ht              wt       
##  A :1   Min.   :120.0   Min.   :162.0   Min.   :187.0  
##  AB:1   1st Qu.:132.0   1st Qu.:165.0   1st Qu.:192.0  
##  B :1   Median :136.0   Median :168.0   Median :210.0  
##  O :2   Mean   :136.6   Mean   :171.8   Mean   :208.2  
##         3rd Qu.:144.0   3rd Qu.:181.0   3rd Qu.:212.0  
##         Max.   :151.0   Max.   :183.0   Max.   :240.0
```

```r
rownames(df)<-c("p1","p2","p3","p4","p5")
df
```

```
##    bg  bp  ht  wt
## p1  O 132 183 192
## p2  O 144 162 210
## p3  A 151 181 240
## p4  B 120 168 187
## p5 AB 136 165 212
```

# R objects: Lists

List is a collection of objects. It can contain vectors, matrices, and dataframes of different lengths. Great way to collate different information

```r
#To access elements of a list use double sqaure brackets [[]] or names (if they have one)

a_list<-list(bp, c("Swansea Hospital", "Bellvue Hospital"))

a_list
```

```
## [[1]]
## [1] 132 144 151 120 136
##
## [[2]]
## [1] "Swansea Hospital" "Bellvue Hospital"
```

```r
a_list<-list(bloodgroup=bg,
             bloodpress=bp,
             height=ht,
             weight=wt,
             hospital="Swansea Hospital",
             doctors=c("Dr. Lewis", "Dr. Hill")
             )

a_list$bloodgroup
```

```
## [1] "O"  "O"  "A"  "B"  "AB"
```

```r
mean(a_list$height)
```

```
## [1] 171.8
```

# Some useful commands

The mode\(\) and typeof\(\) functions provide mode and type of the object. The attributes\(\) function provides useful information such as dimensions and names. The as\(\) function can be used to coerce one object type to another. sample\(\) - Get a random sample of numbers order\(\) – Returns a numeric vector of the element position in ascending order sort\(\) – Returns the values in ascending order paste\(\) – Create a character vector by concatenating two other vectors print\(\) – Prints content of an object to screen range\(\) – Returns minimum and maximum value of a vector t\(\) – Transpose a matrix or dataframe

```r
# notice the difference betwee sort and order
# one returns the value, the other returns the position
ht
```

```
## [1] 183 162 181 168 165
```

```r
sort(ht)
```

```
## [1] 162 165 168 181 183
```

```r
order(ht)
```

```
## [1] 2 5 4 3 1
```

```r
# repeat elements in a vector
rep(ht, times=5)
```

```
##  [1] 183 162 181 168 165 183 162 181 168 165 183 162 181 168 165 183 162
## [18] 181 168 165 183 162 181 168 165
```

```r
rep(ht, each=5)
```

```
##  [1] 183 183 183 183 183 162 162 162 162 162 181 181 181 181 181 168 168
## [18] 168 168 168 165 165 165 165 165
```

```r
#quick way to generate numbers
1:30 #(shortcut for writing c(1,2,3 …. 28,29,30))
```

```
##  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23
## [24] 24 25 26 27 28 29 30
```

```r
2*1:15 #(shortcut for c(2,4,6, … 28, 30))
```

```
##  [1]  2  4  6  8 10 12 14 16 18 20 22 24 26 28 30
```

```r
#seq(from, to, by, length)
seq(-5, 5, by=.2) -> s3
s3
```

```
##  [1] -5.0 -4.8 -4.6 -4.4 -4.2 -4.0 -3.8 -3.6 -3.4 -3.2 -3.0 -2.8 -2.6 -2.4
## [15] -2.2 -2.0 -1.8 -1.6 -1.4 -1.2 -1.0 -0.8 -0.6 -0.4 -0.2  0.0  0.2  0.4
## [29]  0.6  0.8  1.0  1.2  1.4  1.6  1.8  2.0  2.2  2.4  2.6  2.8  3.0  3.2
## [43]  3.4  3.6  3.8  4.0  4.2  4.4  4.6  4.8  5.0
```

```r
s4 <- seq(length=51, from=-5, by=.2)
s4
```

```
##  [1] -5.0 -4.8 -4.6 -4.4 -4.2 -4.0 -3.8 -3.6 -3.4 -3.2 -3.0 -2.8 -2.6 -2.4
## [15] -2.2 -2.0 -1.8 -1.6 -1.4 -1.2 -1.0 -0.8 -0.6 -0.4 -0.2  0.0  0.2  0.4
## [29]  0.6  0.8  1.0  1.2  1.4  1.6  1.8  2.0  2.2  2.4  2.6  2.8  3.0  3.2
## [43]  3.4  3.6  3.8  4.0  4.2  4.4  4.6  4.8  5.0
```
