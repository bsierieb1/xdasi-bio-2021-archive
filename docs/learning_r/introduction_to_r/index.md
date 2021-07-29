---
title: R and RStudio
subtitle: "`r knitr::current_input(dir = FALSE)`" # doesnt seem to do anything
parent: Learning R
nav_order: 1
has_children: true
back_to_top: true # doesnt work
back_to_top_text: "Back to top TEST"
---

# Introduction to R and RStudio
{: .no_toc }

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}

</details>

***

## What is R?

R is a free software environment for statistical computing and graphics. It compiles and runs on a wide variety of UNIX platforms, Windows and MacOS.

The [**R project**](https://r-project.org){:target="_blank"} website provides a short introduction to basic features of the R environment, basic features, how to get help in R, R manuals, and a long list of books on R.

The following two sections are excerpted from the [*About R*](https://www.r-project.org/about.html){:target="_blank"} page on the R project website:

## Introduction to R

R is a language and environment for statistical computing and graphics. It is a GNU project which is similar to the S language and environment which was developed at Bell Laboratories (formerly AT&T, now Lucent Technologies) by John Chambers and colleagues. R can be considered as a different implementation of S. There are some important differences, but much code written for S runs unaltered under R.

R provides a wide variety of statistical (linear and nonlinear modelling, classical statistical tests, time-series analysis, classification, clustering, …) and graphical techniques, and is highly extensible. The S language is often the vehicle of choice for research in statistical methodology, and R provides an Open Source route to participation in that activity.

One of R’s strengths is the ease with which well-designed publication-quality plots can be produced, including mathematical symbols and formulae where needed. Great care has been taken over the defaults for the minor design choices in graphics, but the user retains full control.

R is available as Free Software under the terms of the Free Software Foundation’s GNU General Public License in source code form. It compiles and runs on a wide variety of UNIX platforms and similar systems (including FreeBSD and Linux), Windows and MacOS.

## The R environment

R is an integrated suite of software facilities for data manipulation, calculation and graphical display. It includes

- an effective data handling and storage facility,
- a suite of operators for calculations on arrays, in particular matrices,
- a large, coherent, integrated collection of intermediate tools for data analysis,
- graphical facilities for data analysis and display either on-screen or on hardcopy, and
- a well-developed, simple and effective programming language which includes conditionals, loops, user-defined recursive functions and input and output facilities.

The term “environment” is intended to characterize it as a fully planned and coherent system, rather than an incremental accretion of very specific and inflexible tools, as is frequently the case with other data analysis software.

R, like S, is designed around a true computer language, and it allows users to add additional functionality by defining new functions. Much of the system is itself written in the R dialect of S, which makes it easy for users to follow the algorithmic choices made. For computationally-intensive tasks, C, C++ and Fortran code can be linked and called at run time. Advanced users can write C code to manipulate R objects directly.

Many users think of R as a statistics system. We prefer to think of it as an environment within which statistical techniques are implemented. R can be extended (easily) via packages. There are about eight packages supplied with the R distribution and many more are available through the CRAN family of Internet sites covering a very wide range of modern statistics.

R has its own LaTeX-like documentation format, which is used to supply comprehensive documentation, both on-line in a number of formats and in hardcopy.

## RStudio

R can be used directly on the commandline, however this is not the most convenient way to interact with R. Instead, the preferred way to interact with R is to use [**RStudio**](https://www.rstudio.com/products/rstudio/){:target="_blank"}, an integrated development environment (IDE) for that provides a much richer interface for writing and running R code. It includes a console, syntax-highlighting editor that supports direct code execution, as well as tools for plotting, history, debugging and workspace management.

In addition, RStudio supports the generation of publication-quality documents in many formats:

- PDF
- HTML
- Word
- Slide presentations
- Dynamic web pages (enabling interactive data exploration)

RStudio is available in open source and commercial editions and runs on the desktop (Windows, Mac, and Linux) or in a browser connected to RStudio Server or RStudio Workbench (Debian/Ubuntu, Red Hat/CentOS, and SUSE Linux).


-   [Installing R](installing_r.md)
-   [Interfacing with R](interfacing_with_r.md)
-   [Executing R commands](executing_r.md)
-   [R Session Management](r_session_management.md)
-   [R packages](r_packages.md)
-   [Getting help in R](help_r.md)

***
<a href="#top">Back to top test1</a>
[Back to top test2](#introduction-to-r-and-rstudio)
[Back to top test3](#top)
