---
title: R and RStudio
parent: Learning R
nav_order: 1
has_children: true
---

# What is R? {#top}
{: .no_toc }

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}

</details>

---
![](images/Rlogo.png){ width=10% }

Where better to start than going straight to the source? The following short *Introduction to R* and *The R environment* are excerpted from the [*About R*](https://www.r-project.org/about.html){:target="_blank"} page on the [**R project**](https://www.r-project.org) website. There you may also find extensive documentation (e.g. [manuals](https://cran.r-project.org/manuals.html){:target="_blank"}, [FAQs](https://cran.r-project.org/faqs.html){:target="_blank"}, information about [how to get help in R](https://www.r-project.org/help.html){:target="_blank"}, [books](https://www.r-project.org/doc/bib/R-books.html){:target="_blank"}), and links to a variety of related resources.

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

---

![](images/RStudioLogo.png){ width =10% }{#rstudio}

The most convenient way to interact with R is to use [**RStudio**](https://www.rstudio.com/products/rstudio/){:target="_blank"}, an integrated development environment (IDE) that provides a much richer interface for writing and running R code. It includes a console, syntax-highlighting editor that supports direct code execution, as well as tools for plotting, history, debugging and workspace management.

In addition, RStudio supports the generation of publication-quality documents in many formats:

- PDF
- HTML
- Word
- Slide presentations
- Dynamic web pages (enabling interactive data exploration)

RStudio is available in open source and commercial editions and runs on the desktop (Windows, Mac, and Linux) or in a browser connected to RStudio Server or RStudio Workbench (Debian/Ubuntu, Red Hat/CentOS, and SUSE Linux).

---

[Back to top](#top)
