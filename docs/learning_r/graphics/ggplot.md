---
title: Grammar of Graphics
parent: Data Visualization
grand_parent: Learning R
nav_order: 5
has_children: false
---

# Data Visualization with ggplot2
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---


The **ggplot2** uses a systematic framework called ***the grammar of graphics*** that allows very fine-grained control over how your final product looks.

## Overview

The following introduction is excerpted from [**ggplot Essentials**](http://www.sthda.com/english/wiki/ggplot2-essentials) - a tutorial on ggplot  that covers all the basics of plotting techniques for ggplot2, with examples
  + ***Basic plots:*** qplot, boxplots, violin plots, dot plots, strip charts, density plots, histograms, scatter plots, bar plots, line plots, error bars, pie chars, qqplots, ECDF plots, saving plots
  + ***Graphical parameters:*** Main title, axis labels; legend title; legend position and appearance; controlling colors; point shapes, colors, and sizes; text annotations; line types; themes and background colors; axis scales and transformations; axis ticks; add straight lines to a plot; rotate, flip, and reverse plots; faceting
  + ***Extensions to ggplot2:*** More R packages for extending ggplot functionality

You will get lots of practice using ggplot during this course. Here, we just introduce the framework so you can get a feel for how ggplot plots are constructed.

## ggplot2 essentials

ggplot2 is a powerful and a flexible R package, implemented by Hadley Wickham, for producing elegant graphics.

The concept behind ggplot2 divides plot into three different fundamental parts: **Plot = data + Aesthetics + Geometry**.

The principal components of every plot can be defined as follows:

+ **data** is a data frame
+ **Aesthetics** are used to indicate ***x*** and ***y*** variables. It can also be used to control the color, the size or the shape of points, the height of bars, etc…..
+ **Geometry** defines the type of graphics (histogram, box plot, line plot, density plot, dot plot, ….)
+ There are two major functions in ggplot2 package: qplot() and ggplot() functions.
+ `qplot()` stands for quick plot, which can be used to produce easily simple plots.
+ `ggplot()` function is more flexible and robust than `qplot()` for building a plot piece by piece.

## Resources

***Under construction ...***

+ **Mode blog: 12 Extensions to ggplot2 for More Powerful R Visualizations**](https://mode.com/blog/r-ggplot-extension-packages/)
  + gganimate - animate ggplot2 visualizations
  + ggdendro - flexible dendrogram manipulation
  + ggthemes - extended themes to control the look and feel of graphs, including colorblind palette
  + ggpubr - publication-ready plots
  + [Plotly](https://plotly.com/r/) - graphing library for interactive and dynamic plots
  + patchwork - combine and arrange multiple plots
  + ggridges - ridgeline plots (helpful for showing changes in distributions over time)
  + ggmap - spatial data and models
  + ggrepel - greater control over how text looks in plots
  + ggradar - radar / spider charts
  + ggcorrplot - chart correlation matrices
  + GGally - "functions to reduce the complexity of combining geometric objects with transformed data"; includes ggpairs for fancy plot matrices
  + ggiraph - interactive charts with html and javascript integration
+ A seemingly random [gallery](https://yutannihilation.github.io/allYourFigureAreBelongToUs/) of ggplot extensions
