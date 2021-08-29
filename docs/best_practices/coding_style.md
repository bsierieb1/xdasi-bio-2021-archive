---
title: Coding Style
parent: Best Practices
nav_order: 1
has_children: false
---

# Best Coding Practices
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

# Coding Style
<!-- Note: also put something similar in the R Resources index page -->

Establishing good programming habits is really important. We will be encouraging you to adhere to best coding practices throughout the course.

**Trust us -- if you open a script you wrote 6 months ago, you won't remember anything about what you were thinking when you wrote it!** A script with no comments and poor formatting will be nearly impossible to decipher later and thus will be of little use to anyone.


## Basic Principles

**Clarity** is key to good programming style. The following are important features of clear and reproducible code:

+ A clear articulation of the overall goal of the project
  - _What is your program about? What is it for?_
+ Give your data structures human-readable names
  - _This makes your code much more understandable_
+ Separate different sections of your code with empty lines
  - _This provides visual cues about organization and flow_
+ **COMMENT EVERYTHING!**
  - _Include a short description of what your code is supposed to do_
  - _Start each section of your code with a header comment describing what task is being performed_


## Data Files

It is a good idea to adhere to the following conventions for storing your data:

+ Use descriptive file names
+ Everything should be a **TEXT FILE**
+ Use a simple data format like `.csv`
  - _Proprietary formats can change and become obsolete / unreadable over time_
+ Organize your files
  - _Especially if you have more than one input or output file, use sub-directories (e.g. `/data`, `/input`, `/output`)_
+ Provide a metadata file if needed
  + _This provides additional information about the contents of your data file (e.g. full names and descriptions of the contents, experimental design etc.)_


## Reproducible Workflows with R Markdown

R scripts are great, but they are not ideal for generating reproducible workflows and reports.

**R Markdowns** provide a great framework to ensure that your data analysis can be reproduced by anyone (similar options are also available for other languages such as Python). You can even use them to write a framework for an entire manuscript, including code and figures.

This example is taken from the same source used for the movie clip shown above:

<!-- <p>
  <a href="images/Rmd_manuscript_framework.png" title="Open in new window" target="blank">
    <img src="images/Rmd_manuscript_framework.png" alt="markdown manuscript template" />
  </a>
</p> -->

[![Manuscript template](images/Rmd_manuscript_framework.png)](https://kriscgun.github.io/xdasi-bio-2021/best_practices/images/Rmd_manuscript_framework.png){: title="Open in new window" target="blank"}

You will get plenty of practice with R Markdowns in this class!


### R Markdown Resources
{: .no_toc}

A list of resources for working with R Markdowns is included in the **Learning R**](https://kriscgun.github.io/xdasi-bio-2021/learning_r/7_r_resources/r_markdown.html) section of the course website.


# Style Guides

## R Programming

**Hadley Wickham**, the creator of the **Tidyverse**, has some strong opinions on coding style that we encourage you to adopt, as described in these guides:

+ [**Style Guide**](http://adv-r.had.co.nz/Style.html)
  - _a very short overview_

+ [**The tidyverse Style Guide**](https://style.tidyverse.org/index.html)
  - _an updated and expanded guide of his earlier guide that addresses many more topics_


## R Markdown

A succinct guide on best practices for both coding style and generating reports with R Markdown:

* [**Reproducibility and literate programming in R**](https://exeter-data-analytics.github.io/LitProg/index.html){: target="blank"} _TJ McKinley_


<!-- * [**R Programming for Research**](https://geanders.github.io/RProgrammingForResearch/){: target="blank"} -->


# RStudio Style Tools

There are two R packages available that can help you adhere to the style guide advocated above:

+ **styler** - interactively restyle selected text, files, or entire projects.
  - [Documentation](https://styler.r-lib.org/index.html) (note there are multiple pages here)
   _This package includes an RStudio add-in, the easiest way to re-style existing code._

![Styler Addin](images/styler_0.1.gif){: width="60%"}

+ **lintr** - performs automated checks to confirm that you conform to the style guide.

---

[Back to top](#top)
