---
title: R Resources
layout: default
parent: Learning R
nav_order: 3
has_children: true
---

# Help with commands, syntax, and more!
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

**Can't remember a command or some basic syntax? You'll find everything you need below!**{: .text-green-200}

Over the last few years, there has been a huge explosion of online resources for learning R, including:

+ Cheatsheets
+ Quick guides
+ Tutorials - _(ome sites offer interactive training courses)_
+ Online books - _I've found some of these to be really useful, either for a quick review of key concepts, or for an in-depth treatment of a specific topic._
+ Graphics recipes and galleries - _How to choose different visual representations and how to create them_

There are also many books in print on R programming, some of which are also available as PDFs or eBooks.

Below are some lists of online resources for programming in R and related topics. We will refer you to some of these during the semester. If you find more that you really like, please let us know and we can add them to this list!

[Back to top](#top)

---

# A Note about Google and StackExchange

We know that the first thing most of us do is to use the **Google** search engine to get quick answers to anything and everything in the world. Google is really powerful and sometimes you get what you're looking for right away.

**HOWEVER, you can also easily get lost going down a rabbit hole at places like StackExchange.**{: .text-red-200} If you find that you're spending more than a few minutes trying to find what you are looking for, please take a look at one of the following sites, which provide systematic, organized information on a variety of topics.

[Back to top](#top)

---

# Cheatsheets

You can find a few really helpful cheatsheets and other help topics in RStudio under **"Help=>Cheatsheets"**. Links to several relevant cheatsheets organized according to topic are included below.

The RStudio website also maintains an [extensive list](https://www.rstudio.com/resources/cheatsheets/) of cheatsheets on all kinds of topics (almost too many! and not that well organized ...)

[Back to top](#top)

---

# R Programming

## Cheatsheets

* [**Base R Commands** Cheetsheat _(PDF)_](https://github.com/rstudio/cheatsheets/raw/master/base-r.pdf)
* [**250+ Abbreviations of R commands explained**](r_abbreviations.md) - _If you find yourself wondering what different commands stand for, look here!_


## eTextbooks

The following two books are highly recommended for a succinct introduction to basic R programming. There are many, many other books on R that are available either online or as printed books. A more comprehensive list of R books can be found in the [**Other Resources**]() section.

**You should definitely get one or more R reference books, which will make it easier for you to review different aspects of R programming.**{: .text-green-200}

- **YaRrr! The Pirate’s Guide to R** _Nathaniel D. Philips_ (2018-01-22)
  - _An online book that provides a nice concise introduction to R programming, data wrangling, and basic statistics._
  - [eBook](https://bookdown.org/ndphillips/YaRrr/) - [PDF](https://bookdown.org/ndphillips/YaRrr/YaRrr.pdf) - [Github repo](https://github.com/ndphillips/ThePiratesGuideToR) - [Donate](https://ndphillips.github.io/piratesguide.html)

- **R for Everyone** _Jared Lander_
  - _Another concise and practical book on learning R that may be purchased in paperback or as a Kindle eTextbook_
  - [purchase at Amazon](https://www.amazon.com/Everyone-Advanced-Analytics-Graphics-Addison-Wesley-ebook-dp-B071X9KT1D/dp/B071X9KT1D)


[Back to top](#top)

---

# RStudio

## Cheatsheets

* [**RStudio Cheat Sheets**](https://www.rstudio.com/resources/cheatsheets/)  _includes dplyr, ggplot2, R Markdown, and many others_
* [**RStudio IDE Cheat Sheet**](rstudio-ide.pdf)

## RStudio Utilities

* [**Keyboard Shortcuts**](https://support.rstudio.com/hc/en-us/articles/200711853-Keyboard-Shortcuts-in-the-RStudio-IDE){: .text-green-200}  _Work faster with these shortcuts! (Tools => Keyboard Shortcuts Help)_

* [**Command Palette**](https://blog.rstudio.com/2020/10/14/rstudio-v1-4-preview-command-palette/) _Instant, searchable access to all available commands in RStudio (Tools => Show Command Palette)_

## Online Guides and Books

* [**RStudio R Markdown guide**](https://rmarkdown.rstudio.com/lesson-1.html)

* [[**RStudio Windows _(from the Pirate's Guide to R)_**](https://bookdown.org/ndphillips/YaRrr/the-four-rstudio-windows.html)

---

# R Markdown

**We will make heavy use of Markdown documents in this class.**{: .text-green-200} The following references will help you with creating, formatting, executing, and rendering R Markdown documents.

## Cheatsheets

  * [**R Markdown** Cheatsheet (PDF)](https://github.com/rstudio/cheatsheets/raw/master/rmarkdown-2.0.pdf)
  * [**R Markdown** Reference Guide (PDF)](https://www.rstudio.com/wp-content/uploads/2015/03/rmarkdown-reference.pdf)
  * You may also go to **File > Help > Markdown Quick Reference** to open the Markdown Quick Reference in the RStudio **Help pane**.

## Online Guides

* [**R Markdown Guide**](https://www.markdownguide.org/basic-syntax/) - _Start here for a concise syntax reference, with online cheatsheet_

* [**RStudio R Markdown Manual**](https://rmarkdown.rstudio.com/lesson-1.html) - _Outlines all the basic components, mechanics, and output formats_

## Advanced Topics

* [**R Markdown: The Definitive Guide**](https://bookdown.org/yihui/rmarkdown/)
    _Yihui Xie, J. J. Allaire, Garrett Grolemund_ (2021-04-09)

* [**bookdown: Authoring Books and Technical Documents with R Markdown**](https://bookdown.org/yihui/bookdown/)
    _Yihui Xie_ (2021-08-06)

* [**R Markdown Cookbook**](https://bookdown.org/yihui/rmarkdown-cookbook/)
    _Yihui Xie, Christophe Dervieux, Emily Riederer_ (2021-07-25)

[Back to top](#top)

---

# R Graphics

## Base R Graphics


## ggplot

* [**ggplot2** Cheatsheet (PDF)](https://github.com/rstudio/cheatsheets/blob/master/data-visualization-2.1.pdf)



[Back to top](#top)

---

# Useful R Functions

* [**Syntax Equivalents: Base R vs. Tidyverse**](base-r_tidyverse_equivalents.html)
  + A comparison of basic syntax for working with data frames, by Hugo Tavares.

* [**Introduction to functions for probability distributions (d, q, p, r)**](Intro_R_dqpr_functions.html)
  + Random sampling, PDF, CDF, and inverse CDF functions for standard probability distributions

---

# LaTeX

What is LaTeX? It is a typesetting system that uses plain text to encode mathematical symbols for rendering upon publication (such as turning your .Rmd file into a .pdf file). It allows the proper formatting of complex mathematical expressions, and all the special characters that are needed to write them.

How do you pronounce it? The 'X' is often pronounced as 'k', after the Greek symbol Chi.

There are a lot of LaTeX references online. Here are a few:

* [**RStudio: LaTeX Cheatsheet**](https://wch.github.io/latexsheet/latexsheet.pdf)

* [**LaTeX Math Symbols (quick guide)**](LATEX_Math_Symbols_short.pdf)
A condensed list of the LaTeX notation you will need to write mathematical expressions using LaTeX.

* [**LaTeX Math Symbols (comprehensive)**](LATEX_Math_Symbols_long.pdf)
An expansive compendium of all the LaTeX notation you will ever need.

* [**AoPS: LaTeX Symbols**](https://artofproblemsolving.com/wiki/index.php/LaTeX:Symbols)
A short online list of LaTeX symbols from the Art of Problem Solving website, which also contains links to a lot of other resources for writing and drawing mathematical concepts.

---

[Back to top](#top)
