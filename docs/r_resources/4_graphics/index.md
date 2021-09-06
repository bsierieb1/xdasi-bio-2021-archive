---
title: Data Visualization
parent: R Resources
nav_order: 4
has_children: true

---

# Data Visualization

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

We will cover the basics of both packages in this course, but please also refer to the excellent [**R Graphics Cookbook**](https://r-graphics.org/index.html) for detailed guidance on how to visualize data in R (and tons of examples). Here we provide two short guides to plotting with both methods, with links to a variety of other useful resources for each. We will follow these up with a lot of exercises to get you going with both methods.

+ [**Base R Graphics**](1_base_r.html)
+ [**ggplot2: the tidyverse way!**](3_ggplot2.html)


# Effective Use of Color

Color is an important aspect of conveying information, and there is a lot of theory behind choosing colors. Color is important for:

+ contrasting different categorical groups
+ distinguishing quantitative variables
+ highlighting information

## Palettes

**Palettes** are groups of related colors that are chosen to convey or highlight different kinds of information, and many options are available. A good discussion on palettes (and colors more generally) may be found [**here**](https://bookdown.org/hneth/ds4psy/D-1-apx-colors-intro.html){: target="blank"}.

+ **sequential**
  - Great for low-to-high things where one extreme is exciting and the other is boring, like (transformations of) p-values and correlations (caveat: here I'm assuming the only exciting correlations you're likely to see are positive, i.e. near 1).
+ **qualitative**
  - Great for non-ordered categorical things -- such as your typical factor, like country or continent. Note the special case "Paired" palette; example where that's useful: a non-experimental factor (e.g. type of wheat) and a binary experimental factor (e.g. untreated vs. treated).
+ **diverging**
  - Great for things that range from "extreme and negative" to "extreme and positive", going through "non extreme and boring" along the way, such as t-statistics and z-scores and signed correlations.
+ **hybrid**
  - combine qualitative and sequential aspects

## Color Codes

There are several ways to refer to colors in R:

  + **name** - e.g. `col="aquamarine4"`
    - use `colors()` to see a list of the 657 named colors in R
    - see [**this blog**](https://www.datanovia.com/en/blog/awesome-list-of-657-r-color-names/){: target="blank"} for a graphical display
  + **number** - e.g. `colors()[5]`
    - all named colors can also be accessed by their index number
  + **RGB** - e.g. rgb(red, green, blue, alpha), e.g. `rgb(0,0,255)` = blue
    - amount of red, green, and blue, ranging from 0-255, plus transparency
  + **hexacecimal** - "#RRGGBB", e.g. `#0000FF` = blue
    - each pair of digits from 00-FF corresponds to the intensity of red, green, or blue


# Color Resources

+ [**Data Science for Psychologists**](https://bookdown.org/hneth/ds4psy/) - _Hansjörg Neth_ (2021-09-03)
  - A good discussion about thinking about and handling colors and palettes, both generally and in R
  - Introduces the color packages *RColorBrewer*, *viridis*, and *unikn*
+ **R Graph Gallery**
  + [**base R**](https://www.r-graph-gallery.com/colors.html){: target="blank"}
  + [**ggplot2**](https://www.r-graph-gallery.com/ggplot2-color.html){: target="blank"}
+ **STDHA**
  + [** The Elements of Choosing Colors for Great Data Visualization in R**](http://www.sthda.com/english/wiki/the-elements-of-choosing-colors-for-great-data-visualization-in-r){: target="blank"}
    - Introduces another tool for designing color palettes called *colortools*
+ [**R Cookbook**: colors with ggplot2 (includes RColorBrewer)](http://www.cookbook-r.com/Graphs/Colors_(ggplot2){: target="blank"}
+ [**Tidyverse**: RColorBrewer with ggplot2](https://ggplot2.tidyverse.org/reference/scale_brewer.html){: target="blank"}
+ [**Comprehensive list of color palettes in R**](https://github.com/EmilHvitfeldt/r-color-palettes){: target="blank"}
  - also provides a link to an interactive color picker
