---
title: Working with Color
parent: Data Visualization
grand_parent: R Resources
nav_order: 4
---

# Using Colors Effectively

Color is an important aspect of visual communication, and there is a lot of theory behind choosing colors. Color can be used for:

+ contrasting different categorical groups
+ distinguishing quantitative variables
+ highlighting information


## Color Codes

There are several ways to refer to colors in R:

  + **name** - e.g. `col="aquamarine4"` (also "blue", salmon", "violet", etc.)
    - use `colors()` to see a list of the 657 named colors in R
    - see [**this blog**](https://www.datanovia.com/en/blog/awesome-list-of-657-r-color-names/){: target="blank"} for a graphical display
  + **number** - e.g. `col=1`, or draw numbers from `colors()[1:657]`
    - all named colors can also be accessed by their index number
  + **RGB** - e.g. rgb(red, green, blue, alpha), e.g. `rgb(0,0,255)` = blue
    - amount of red, green, and blue, ranging from 0-255, plus transparency
  + **hexacecimal** - "#RRGGBB", e.g. `#0000FF` = blue
    - each pair of digits from 00-FF corresponds to the intensity of red, green, or blue
  + **HCL** - hue, chroma, luminescence
    - an alternative representation of color

In Base R, different graph elements can be set using the `col` parameter (also col.axis, col.lab, col.main, col.sub). Other packages include additional functions for controlling colors (e.g. `fill` in ggplot2; )


## Palettes

**Palettes** are groups of related colors that are used together to convey or highlight different kinds of information. A good discussion on palettes (and colors more generally) may be found [**here**](https://bookdown.org/hneth/ds4psy/D-1-apx-colors-intro.html){: target="blank"}.

General categories of palettes are:

+ **sequential**
  - Great for low-to-high things where one extreme is exciting and the other is boring, like (transformations of) p-values and correlations (caveat: here I'm assuming the only exciting correlations you're likely to see are positive, i.e. near 1).
+ **qualitative**
  - Great for non-ordered categorical things -- such as your typical factor, like country or continent. Note the special case "Paired" palette; example where that's useful: a non-experimental factor (e.g. type of wheat) and a binary experimental factor (e.g. untreated vs. treated).
+ **diverging**
  - Great for things that range from "extreme and negative" to "extreme and positive", going through "non extreme and boring" along the way, such as t-statistics and z-scores and signed correlations.
+ **hybrid** - combine qualitative and sequential aspects

Many different palettes are available in R for representing categorical or quantitative data. The current color palette in R can be accessed using `palette()`. The default one is not so nice, which is why it's good to know about other options!

Since a palette is simply a vector of color codes in R, you can also define your own palettes by manually specifying a vector of color codes, but there are also a lot of R color packages that provide a range of different color palettes.


## R Color Packages

Some color packages in R:

+ grDevices (Base R)
  - a built-in package that comes with a range of functions for defining palettes
  - includes rainbow, heat.colors, cm.colors
+ RColorBrewer - provides nice set of palettes for different display purposes
  - after installing, palettes can be accessed using `display.brewer.all()`
+ viridis - robust color scales for colorblindness
+ ggsci - scientific journal color palettes
+ wesanderson - 16 palettes from Wes Anderson movies (!)


## Color Resources

+ [**Data Science for Psychologists**](https://bookdown.org/hneth/ds4psy/) - _Hansjörg Neth_ (2021-09-03)
  - A good discussion about thinking about and handling colors and palettes, both generally and in R
  - Introduces the color packages *RColorBrewer*, *viridis*, and *unikn*
+ **R Graph Gallery**
  + [**base R**](https://www.r-graph-gallery.com/colors.html){: target="blank"}
  + [**ggplot2**](https://www.r-graph-gallery.com/ggplot2-color.html){: target="blank"}
+ **STDHA**
  + [**The Elements of Choosing Colors for Great Data Visualization in R**](http://www.sthda.com/english/wiki/the-elements-of-choosing-colors-for-great-data-visualization-in-r){: target="blank"}
    - Introduces another tool for designing color palettes called *colortools*
+ [**R Cookbook**: colors with ggplot2 (includes RColorBrewer)**](http://www.cookbook-r.com/Graphs/Colors_(ggplot2){: target="blank"}
+ [**Tidyverse**: RColorBrewer with ggplot2**](https://ggplot2.tidyverse.org/reference/scale_brewer.html){: target="blank"}
+ [**Comprehensive list of color palettes in R**](https://github.com/EmilHvitfeldt/r-color-palettes){: target="blank"}
  - also provides a link to an interactive color picker
