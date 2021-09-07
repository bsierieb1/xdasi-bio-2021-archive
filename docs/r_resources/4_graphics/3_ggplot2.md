---
title: ggplot2, the tidyverse way
parent: Data Visualization
grand_parent: R Resources
nav_order: 3
---

# ggplot2, a.k.a Do it the tidyverse way!

If you want to create publication-quality, aesthetically pleasing figures, or even if you just need to create a complex plot with multiple layers of information for yourself, ggplot2 is your friend. While the ggplot2 syntax may seem scary to you at first, you will learn to appreciate its logic once you get a feel for what is what.


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


# Resources

## Cheatsheets

+ [**RStudio: ggplot cheatsheet (PDF)**](https://github.com/rstudio/cheatsheets/raw/master/data-visualization.pdf){: target="blank"}
  - comprehensive guide to syntax
+ [**qplot RGraphics Cheatsheet**](https://dcgerard.github.io/stat_412_612/lectures/03_graphics/03_qplot_cheatsheet.pdf){: target = "blank"} - by David Gerard (2019-01-22)
  + simple examples of different kinds of plots

## Textbooks

+ [**Chapter 3.7**](https://geanders.github.io/RProgrammingForResearch/exploring-data-1.html#plots-to-explore-data){: target="blank"} from **R Programming for Research** - a concise introduction to ggplot2
+ [**R Graphics Cookbook**](https://r-graphics.org/){: target="blank"} - a comprehensive guide for making all kinds of graphs with ggplot2


## DataCamp: Interactive Online Courses

+ [**Introduction to Data Visualization with ggplot2**](https://learn.datacamp.com/courses/introduction-to-data-visualization-with-ggplot2){: target="blank"}
+ [**Intermediate Data Visualization with ggplot2**](https://learn.datacamp.com/courses/intermediate-data-visualization-with-ggplot2){: target="blank"}

Both of these are freely available through the [**XDASI DataCamp for Education**](https://app.datacamp.com/groups/exploratory-data-analysis-and-statistical-inference/){: target="blank"} course site.


## Tutorials and References

+ [**Cookbook for R: Graphs**](http://www.cookbook-r.com/Graphs/){: target="blank"} by Winston Change (author for the **R Graphics Cookbook**)
+ [**STHDA: ggplot Essentials**](http://www.sthda.com/english/wiki/ggplot2-essentials){: target="blank"} covers all the basics of plotting techniques for ggplot2, with examples (unfortunately it also has a lot of ads, but it's still pretty useful!)
  + **Basic plots**
    - qplot, boxplots, violin plots, dot plots, strip charts, density plots, histograms, scatter plots, bar plots, line plots, error bars, pie chars, qqplots, ECDF plots, saving plots
  + **Graphical parameters**
    - Main title, axis labels; legend title; legend position and appearance; controlling colors; point shapes, colors, and sizes; text annotations; line types; themes and background colors; axis scales and transformations; axis ticks; add straight lines to a plot; rotate, flip, and reverse plots; faceting
  + **Extensions to ggplot2**
    - More R packages for extending ggplot functionality
+ [**STHDA: Easy Way to Mix Multiple Graphs on The Same Page**](http://www.sthda.com/english/articles/24-ggpubr-publication-ready-plots/81-ggplot2-easy-way-to-mix-multiple-graphs-on-the-same-page/){: target="blank"}
  - examples using different packages to arrange multiple graphs on the same page
  - really useful for producing publication-quality figures!
  - covers `ggarange()` from the **ggpubr** package, **cowplot**, **grid**, and **gridExtra** packages

# Extensions

Many add-ons to ggplot have been developed, some of which are listed below. We will learn more about a few of these during the course.

+ **Mode blog: 12 Extensions to ggplot2 for More Powerful R Visualizations**](https://mode.com/blog/r-ggplot-extension-packages/){: target="blank"}
  + gganimate - animate ggplot2 visualizations
  + ggdendro - flexible dendrogram manipulation
  + ggthemes - extended themes to control the look and feel of graphs, including colorblind palette
  + [**ggpubr**](https://rpkgs.datanovia.com/ggpubr/){: target="blank"} - publication-ready plots
    + contains the incredibly useful `ggarrange()` function for arranging and annotating multiple plots in a single figure
    + also see
  + [Plotly](https://plotly.com/r/){: target="blank"} - graphing library for interactive and dynamic plots
  + patchwork - combine and arrange multiple plots
  + ggridges - ridgeline plots (helpful for showing changes in distributions over time)
  + ggmap - spatial data and models
  + ggrepel - greater control over how text looks in plots
  + ggradar - radar / spider charts
  + ggcorrplot - chart correlation matrices
  + GGally - "functions to reduce the complexity of combining geometric objects with transformed data"; includes ggpairs for fancy plot matrices
  + ggiraph - interactive charts with html and javascript integration
+ A seemingly random [gallery](https://yutannihilation.github.io/allYourFigureAreBelongToUs/){: target="blank"} of ggplot extensions
