---
title: "IndexingVectors"
author: "Manpreet S. Katari"
output: html_document
---

## Create a new numeric vector
Note that the NA is acceptable because it is not a character, but a special value which stands for **not available**

```{r}
v <- c(4,2,3,8,2,2,NA,5)
v
```

To retrieve a value from a vector you use \[ *index* \]. The index can be:
- numerical values representing position
- names given to the positions in the vector
- logical vector where the values in the **True** positions are reported

```{r}
v[4]
```

```{r}
#changing values in a vector
v[4] = 10
v
```

Create a logical vector

```{r}
v < 4
```

Subset a set of values. The **:** between the numbers is a short cut for range. So `1:3` is equivalent to `c(1,2,3)`

```{r}
v[1:3]
```

You can also ask for the opposite of the selection

```{r}
v[-c(1,5,8)]
```

```{r}
# equivalent expressions
temp = v < 4
temp
```

Note that temp is a logical vector that we can use to retrieve values.

```{r}
v[temp]
```


let's put letters as labels for the vector v so we can retrieve values based on it's name. Note there are several helpful datasets and functions that we can take advantage of in R. One such variable is **letters**. Here we are assigning the attribute **names** of **v** to the first 8 letters of the alphabet.

```{r}
names(v) = letters[1:8]
```

```{r}
v
```

Now instead of positions, we can also use their names.

```{r}
v[c("a","c")]
```
