---
title: Lists
parent: Data Structures
grand_parent: Learning R
nav_order: 3
has_children: false
---

# R Objects: Lists
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

A list is a collection of objects. It can contain vectors, matrices, and dataframes of different lengths. It's a great way to collate different information

To access elements of a list use double sqaure brackets ``[[]]`` or names (if they have one) followed by ``$``

```{r}

a_list<-list(sepal.width, sepal.length,
             c("setosa", "versicolor","virginica"))

a_list

a_list<-list(width=sepal.width,
             length=sepal.length,
             species=c("setosa", "versicolor","virginica"),
             numberOfFlowers=50
             )

a_list$width

mean(a_list$length)

```
