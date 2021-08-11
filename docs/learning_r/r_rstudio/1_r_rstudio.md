---
title: Introduction
parent: R and RStudio
grand_parent: Learning R
nav_order: 1
---

# ![](images/Rlogo.png | width=100) Introduction to R {#top}

<img src="images/Rlogo.png" style="width:100px;"/>

{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## What is R?

Where better to start than going straight to the source? The following short *Introduction to R* is adapted from the [*About R*](https://www.r-project.org/about.html){:target="_blank"} page on the [**R project**](https://www.r-project.org) website. There you may also find extensive documentation (e.g. [manuals](https://cran.r-project.org/manuals.html){:target="_blank"}, [FAQs](https://cran.r-project.org/faqs.html){:target="_blank"}, information about [how to get help in R](https://www.r-project.org/help.html){:target="_blank"}, [books](https://www.r-project.org/doc/bib/R-books.html){:target="_blank"}), and links to a variety of related resources.

### A free language and environment for statistical computing and graphics

  R is a GNU project which is similar to the S language and environment which was developed at Bell Laboratories (formerly AT&T, now Lucent Technologies) by John Chambers and colleagues. R can be considered as a different implementation of S. There are some important differences, but much code written for S runs unaltered under R.

  R is available as Free Software under the terms of the Free Software Foundation’s GNU General Public License in source code form. It compiles and runs on a wide variety of UNIX platforms and similar systems (including FreeBSD and Linux), Windows and MacOS.

### A framework for statistical analyses and graphics

R provides a wide variety of statistical (linear and nonlinear modelling, classical statistical tests, time-series analysis, classification, clustering, …) and graphical techniques, and is highly extensible. The S language is often the vehicle of choice for research in statistical methodology, and R provides an Open Source route to participation in that activity.

One of R’s strengths is the ease with which **well-designed publication-quality plots** can be produced, including **mathematical symbols and formulae** where needed. Great care has been taken over the defaults for the minor design choices in graphics, but the user retains full control.

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

## R Interfaces

There are three ways to interact with R:

- **R commandline** - the simplest interface for R
- **Rgui** - a rudimentary graphical user interface (GUI) distributed with R
- **RStudio** - An integrated development environment (IDE) for R, the preferred way to use R

[**Interfacing with R**](3_interfacing_with_r.md) and [**R Session Management**](4_r_session_management.md) provide a short overview.

---

[Back to top](#top)
