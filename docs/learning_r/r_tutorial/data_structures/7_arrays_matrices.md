---
title: Arrays / Matrices
parent: R Tutorial
grand_parent: Learning R
nav_order: 7
has_children: false
---

# R Objects: Arrays / Matrices
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

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
