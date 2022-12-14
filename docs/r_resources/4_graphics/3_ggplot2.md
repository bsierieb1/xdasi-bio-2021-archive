---
title: ggplot2 Pt. II, functions and resources
parent: Data Visualization
grand_parent: R Resources
nav_order: 3
---

# ggplot2: Functions and Resources
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

While the ggplot2 syntax may seem scary to you at first, you will learn to appreciate its logic once you get a feel for what is what.

---

# ggplot2 Functions

The ggplot2 package employs two major **functions** to draw graphs:

+ `qplot()` - "quick plot", used to easily produce simple plots for data exploration
  - uses similar syntax to base R methods; see [**Quick R**](https://www.statmethods.net/advgraphs/ggplot2.html){: target="blank"} by DataCamp for a brief overview, with examples
  - usage: `qplot(x, y, data=, color=, shape=, size=, alpha=, geom=, method=, formula=, facets=, xlim=, ylim= xlab=, ylab=, main=, sub=)`
+ `ggplot()` - a more flexible and robust function for building a plot layer by layer
  - uses explicit Grammar for Graphics syntax
  - different layers are typically arranged on different rows for clarity

The basic format for a ggplot2 graph is **Plot = data + aesthetics + geometry** (other layers are optional):

```
ggplot(data = <data.frame>,              # data (a data frame)
       mapping = aes(x= ,y= , col= )) +  # aesthetics
                                         # x,y are columns of the data frame
  geom_<type of geometry>() +            # geometry
  stat() +                               # statistics (optional)
  theme()                                # theme (optional)
```

To get a feel for the similarities and differences between base R plotting, `qplot()`, and `ggplot()` syntax, see the numerous examples in [**Chapter 2**](https://r-graphics.org/chapter-quick){: target="blank"} of the excellent **R Graphics Cookbook** by Winston Chang.

We will go through lots of examples in the course.

---

# Extensions

Many add-ons to ggplot have been developed, some of which are listed below. We will learn more about a few of these during the course.

## Some useful packages

+ [**ggpubr**](https://rpkgs.datanovia.com/ggpubr/){: target="blank"} - publication-ready plots
  + contains the incredibly useful `ggarrange()` function for arranging and annotating multiple plots in a single figure
  + also see cowplot, patchwork, grid, and gridExtra
+ ggsignif, ggstatsplot - display statistical significance and other quantities on your plots
+ ggdistribute - overlay information about a distribution's intervals on unimodal distributions
+ ggcorrplot - chart correlation matrices
+ ggdendro - flexible dendrogram manipulation
+ ggridges - ridgeline plots (helpful for showing changes in distributions over time)
+ ggthemes - extended themes to control the look and feel of graphs, including colorblind palette
+ ggradar - radar / spider charts
+ gggenomes - a grammar of graphics for comparative genomics
+ ggmap - spatial data and models
+ ggrepel - greater control over how text looks in plots (and keep text labels away from each other)
+ GGally - reduce the complexity of combining geometric objects with transformed data
  + includes ggpairs for fancy plot matrices
+ interactive graphics
  + gganimate - animate ggplot2 visualizations
  + ggiraph - interactive charts with html and javascript integration
  + [Plotly](https://plotly.com/r/){: target="blank"} - graphing library for interactive and dynamic plots

## Some lists of extensions

+ [**ggplot Extensions gallery**](https://exts.ggplot2.tidyverse.org/gallery/){: target="blank"} - start here!
+ [**opensource: top 46**](https://awesomeopensource.com/projects/ggplot-extension){: target="blank"} - a list of 46 ggplot extension open source projects on GitHub
+ [**Mode blog: 12 Extensions to ggplot2 for More Powerful R Visualizations**](https://mode.com/blog/r-ggplot-extension-packages/){: target="blank"}
+ A seemingly random [gallery](https://yutannihilation.github.io/allYourFigureAreBelongToUs/){: target="blank"} of ggplot extensions

---

# Resources

## Cheatsheets

+ [**RStudio: ggplot cheatsheet (PDF)**](https://github.com/rstudio/cheatsheets/raw/master/data-visualization.pdf){: target="blank"}
  - comprehensive guide to syntax
+ [**qplot RGraphics Cheatsheet**](https://dcgerard.github.io/stat_412_612/lectures/03_graphics/03_qplot_cheatsheet.pdf){: target = "blank"} - by David Gerard (2019-01-22)
  + simple examples of different kinds of plots

## DataCamp: Interactive Online Courses

+ [**Introduction to Data Visualization with ggplot2**](https://learn.datacamp.com/courses/introduction-to-data-visualization-with-ggplot2){: target="blank"}
+ [**Intermediate Data Visualization with ggplot2**](https://learn.datacamp.com/courses/intermediate-data-visualization-with-ggplot2){: target="blank"}

Both of these are freely available through the [**XDASI DataCamp for Education**](https://app.datacamp.com/groups/exploratory-data-analysis-and-statistical-inference/){: target="blank"} course site.

## Texts and Tutorials

+ [**R Programming for Research: Chapter 3.7**](https://geanders.github.io/RProgrammingForResearch/exploring-data-1.html#plots-to-explore-data){: target="blank"} - a concise introduction to ggplot2
+ by _**Winston Chang**_
  + [**Cookbook for R: Graphs**](http://www.cookbook-r.com/Graphs/){: target="blank"} - examples of different graph types (with code)
  + [**R Graphics Cookbook**](https://r-graphics.org/){: target="blank"} - a comprehensive guide for making all kinds of graphs with ggplot2
+ **STHDA**
  + [**ggplot Essentials**](http://www.sthda.com/english/wiki/ggplot2-essentials){: target="blank"} - covers all the basics of plotting techniques for ggplot2, with examples (unfortunately it also has a lot of ads, but it's still pretty useful!)
    + **Basic plots** - qplot, boxplots, violin plots, dot plots, strip charts, density plots, histograms, scatter plots, bar plots, line plots, error bars, pie chars, qqplots, ECDF plots, saving plots
    + **Graphical parameters** - Main title, axis labels; legend title; legend position and appearance; controlling colors; point shapes, colors, and sizes; text annotations; line types; themes and background colors; axis scales and transformations; axis ticks; add straight lines to a plot; rotate, flip, and reverse plots; faceting
    + **Extensions to ggplot2** - R packages for extending ggplot functionality
  + [**Easy Way to Mix Multiple Graphs on The Same Page**](http://www.sthda.com/english/articles/24-ggpubr-publication-ready-plots/81-ggplot2-easy-way-to-mix-multiple-graphs-on-the-same-page/){: target="blank"}
    - examples using different packages to arrange multiple graphs on the same page
    - really useful for producing publication-quality figures!
    - covers `ggarange()` from the **ggpubr** package, **cowplot**, **grid**, and **gridExtra** packages
