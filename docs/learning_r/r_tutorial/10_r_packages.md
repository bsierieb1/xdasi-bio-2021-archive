---
title: R Packages
parent: R Tutorial
grand_parent: Learning R
nav_order: 10
has_children: false
---

# Working with R Packages -- NEEDS REVISION
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

YouTube Video: [R Packages](https://youtu.be/e7h9_Gq7qPU)

Several packages such as multcomp are available on CRAN. They contain specialized functions and data that can be used for your analysis.


### To view the names of the packages installed

> `library()`

### To load a library
>`library(cluster)`

### View all packages loaded
>`search()`
>
>
>`##  [1] ".GlobalEnv"      "package:cluster"   "package:stats"    `
>`##  [4] "package:graphics"  "package:grDevices" "package:utils" `   
>`##  [7] "package:datasets"  "package:methods"   "Autoloads"  `      
>`## [10] "package:base"`
>
>
### To install packages
`>install.packages("multcomp",repos='http://cran.us.r-project.org')`
>
>
>`## The downloaded binary packages are in`

`##  /var/folders/q3/yzvt5fr95056x4frykp7p6kh0000gn/T//RtmpqvxipJ/downloaded_packages`


RStudio allows you to install and load packages using the packages tab.

![](RStudio/Slide7_large.png)

## Bioconductor

Another excellent source for Biology related R packages is Bioconductor. The R packages for Bioconductor are easily accessible via CRAN. To install a Bioconductor packages you must first install BiocManager package and then use the BiocManager::install() function to install a package. We will get into the details in the later lectures, but below is the code.

>`install.packages("BiocManager")`

>`BiocManager::install("DESeq2")`

>`library("DESeq2")`
