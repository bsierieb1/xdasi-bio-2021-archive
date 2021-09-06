---
title: Data Visualization
parent: R Resources
nav_order: 4
has_children: true
---

# Data Visualization
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

Before we dive in to the nuts and bolts of plotting in R, let's take a few minutes to think more broadly about data visualization. As the saying goes, "a picture is worth a thousand words". Consider this famous illustration of Napoleon's Russian campaign of 1812-1813:

![](Images/Minard_Napolen_1812.jpg)

Napoleon's army left Paris in June with over 400,000 soldiers; only a few thousand returned, after a harrowing retreat in the bitter cold of winter. This graphic makes the point concisely and impressively.


# Visualization in Data Science

Visualizing data is a core component of data science, and has **two main purposes**:

+ It plays a key role in preliminary **data exploration** and modeling.
+ It is important for science **communication**, i.e. disseminating your results to the scientific community.

Actually ***looking*** at your data helps to understand its nature and scope, spot any problems that may exist within the data, formulate and test hypotheses, and distill information to convey to others.

A typical data science workflow is illustrated in this figure from [***R for Data Science***](https://r4ds.had.co.nz/explore-intro.html):

![](Images/data_viz_cycle.png)

It is usually necessary to clean, format, and transform your data in preparation for **exploratory data analysis** and visualization. This often involves an iterative cycle in which we use or data to generate and test hypotheses and to discover and model relationships. Finally, we must **communicate** our results and conclusions in a clear, concise, and effective manner.


# Choosing a Visual Paradigm

Deciding what kind of plot to use will depend on the type of data you are trying to plot. A couple good websites are very useful for helping you identify the type of plot you want to make, based on what kind of data you have. They also have examples and code for different types of plots:

+ [**Data to Viz**](https://www.data-to-viz.com/)
  + This site provides a very useful **decision tree** that illustrates how to choose different visualizations and provides example code for all of them.
+ [**R Graph Gallery**](https://www.r-graph-gallery.com/index.html)
  + Contains a lot of examples of different types of graphs, and provides tips for plotting with both base R and ggplot2.


# R Graphics Overview

R is very powerful for creating beautiful publication-ready graphs of all kinds. Most people use one of two packages to plot data: base R or `ggplot2`.

Briefly, **Base R graphics** are great for **exploratory data analysis** because the code is quicker to write and allows "quick and dirty" plots that help you get a feel for your data. However, controlling the look and feel of base R graphs, and generating more complex graphs and figures, is somewhat cumbersome.

On the other hand, **ggplot2** is better adapted to **scientific communication** - it is more powerful, produces more visually appealing plots, and has many extensions that enable sophisticated graphical presentations. As a result, most people now use this package for much of their data analysis, and for producing publication quality graphs.

We will cover the basics of both packages in this course, but please also refer to the excellent [**R Graphics Cookbook**](https://r-graphics.org/index.html) for detailed guidance on how to visualize data in R (and tons of examples).

Here we provide two short guides to plotting with both methods, with links to a variety of other useful resources for each. We will follow these up with a lot of exercises to get you going with both methods.

+ [**Base R Graphics**](1_base_r.html)
+ [**ggplot2: the tidyverse way!**](3_ggplot2.html)


# Effective Use of Color

Color is an important aspect of conveying information, and there is a lot of theory behind choosing colors. Color is important for:

+ contrasting different categorical groups
+ distinguishing quantitative variables
+ highlighting information

A good discussion for thinking about and handling colors in R may be found [**here**](https://bookdown.org/hneth/ds4psy/D-apx-colors.html).

R comes with a wide array of built-in colors. You may find a graphical display of 657 named R colors [**here**](https://www.datanovia.com/en/blog/awesome-list-of-657-r-color-names/).

**Palettes** are groups of related colors that are chosen to convey or highlight different kinds of information, and many options are available. A good discussion on palettes (and colors more generally) may be found [**here**](https://bookdown.org/hneth/ds4psy/D-1-apx-colors-intro.html).

## R Color Brewer

A popular color package is called **RColorBrewer**. RColorBrewer contains a wide variety of nice palettes, including color-blind ones and can be used with both base R graphics and ggplot2. It is estimated that around 8% of males have some form of color-blindness, and so they may not be able distinguish among two contrasting colors like red and green.

RColorBrewer palettes fall into 3 classes^[Source: https://www.stat.ubc.ca/~jenny/STAT545A/block14_colors.html]{: target="blank"}:

+ **sequential**
  - Great for low-to-high things where one extreme is exciting and the other is boring, like (transformations of) p-values and correlations (caveat: here I'm assuming the only exciting correlations you're likely to see are positive, i.e. near 1).
+ **qualitative**
  - Great for non-ordered categorical things -- such as your typical factor, like country or continent. Note the special case "Paired" palette; example where that's useful: a non-experimental factor (e.g. type of wheat) and a binary experimental factor (e.g. untreated vs. treated).
+ **diverging**
  - Great for things that range from "extreme and negative" to "extreme and positive", going through "non extreme and boring" along the way, such as t-statistics and z-scores and signed correlations.

You can display the palettes in R using `display.brewer` commands, and select different palettes with the `brewer.pal()` command.

```r
#install.packages("RColorBrewer")  # just need to do this once
library(RColorBrewer)
display.brewer.all() # show all the palettes
#display.brewer.pal(n = 8, name = 'Spectral') # to show one specific palette
```

![](Images/color_brewer_palettes.png){: width=60%}


## Other Color Resources

+ A good discussion about thinking about and handling colors in R may be found [**here**](https://bookdown.org/hneth/ds4psy/D-apx-colors.html).
+ You can also read more about choosing colors [**here**](http://www.sthda.com/english/wiki/the-elements-of-choosing-colors-for-great-data-visualization-in-r)
This blog post introduces another tool for designing color palettes called **colortools**.

+ [**SDHTA**: ggplot2 colors](http://www.sthda.com/english/wiki/ggplot2-colors-how-to-change-colors-automatically-and-manually) tutorial
+ [**R Cookbook**: colors with ggplot2 (includes RColorBrewere)](http://www.cookbook-r.com/Graphs/Colors_(ggplot2))
+ [**Tidyverse**: RColorBrewer with ggplot2](https://ggplot2.tidyverse.org/reference/scale_brewer.html)


# General R Graphics Resources

Please refer to the Base R Graphics and ggplot2 pages for links to a variety of resources for each.
