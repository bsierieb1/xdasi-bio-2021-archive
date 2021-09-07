library(ggplot2)
# ============================================================================ #
# Read the data file and check it
# ============================================================================ #
# note that we do not need to create factors here!
# the syntax for the graphs below will automatically group the data as needed
hemoData <- read.csv("data/Ex2.3B_hemoglobin.csv")
str(hemoData) # structure
head(hemoData) # contents

# ============================================================================ #
# Draw a strip chart with base R
# ============================================================================ #
# Below we draw a graph using the "formala" syntax, which uses the tilde symbol
# to specify the y-axis data by the x-axis data
stripchart(hemoglobin ~ population, # a formula for y-axis vs. x-axis
           data=hemoData, # data frame
#           main="Title",
           xlab="Male population",
           ylab="Hemoglobin concentration (g/dL)",
           col="firebrick",
           method="jitter", # displace points from each other to make them more visible
           vertical=TRUE,
           pch=1, # empty circles
           cex=1.3 # make the points a little bigger!
)
# ============================================================================ #
# Draw a strip chartwith ggplot
# ============================================================================ #
ggplot(data = hemoData, # data frame
       aes(x = population, y = hemoglobin)) + # x and y axes
  geom_jitter(color = "firebrick",
              shape = 1, 
              size = 3, # note size specifications differ from cex
              width = 0.15) + # default is too wide; squish points together more
  labs(x = "Male population", 
       y = "Hemoglobin concentration (g/dL)") + 
  theme_classic()

# ============================================================================ #
# Draw a violin plot with ggplot
# ============================================================================ #
# ggplot is so convenient for drawing violin plots that 
# we won't bother to try to make a violin plot with base R!

# basic plot
ggplot(data = hemoData, # data frame
       aes(y = hemoglobin, x = population)) + # x and y data
  geom_violin(fill = "goldenrod1", 
              col = "black") + 
  labs(x = "Male population", 
       y = "Hemoglobin concentration (g/dL)") + 
  # we can add statistical summaries too
  stat_summary(fun = mean, # show the mean using a function
               geom = "point", # show the mean using a point
               color = "black") + # this is actually the default
  theme_classic()

# ============================================================================ #
# Fancier violin plot with ggplot
# ============================================================================ #
# Here is the same plot with a box plot superimposed.
# Box plots show the median and interquartile range, containing
# the middle 75% of the data -- we will get to this in Chapter 3

ggplot(data = hemoData, 
       aes(y = hemoglobin, x = population)) + 
  geom_violin(fill = "cyan3") + 
  
  # this directive superimposes a thin boxplot on top of the violin plot!
  geom_boxplot(width=0.1) +
  
  labs(x = "Male population", 
       y = "Hemoglobin concentration (g/dL)") + 
  stat_summary(fun = mean,  
               geom = "point") +
  theme_classic()

# ============================================================================ #
# Stacked histograms with ggplot and facet_wrap()
# ============================================================================ #
# Combining multiple plots into one is pretty easy using the
# `facet_wrap()` and `facet_grid()` directives.
# The variable used to split the data into different panels is called the "facet".

ggplot(data = hemoData, # the data frame
       aes(x = hemoglobin)) + # the data column to be shown for each group
  
  # specification for each histogram
  geom_histogram(fill = "firebrick", binwidth = 1, col = "black", 
                 boundary = 0, # position the bin breaks on integers
                               # (see what happens if you change this to 0.5)
                 closed = "left") + # which edge of the bin is included in the bin
  labs(x = "Hemoglobin concentration (g/dL)", y = "Frequency") + 
  theme_classic() +
  
  # Draw multiple graphs together on top of each other
  # Note: he syntax for specifying the groups to show uses a formula, where 
  #   the dot just refers to the data above (this could also be omitted)
  # Note: each graph is referred to as a "strip" here
  facet_wrap(. ~ population, # a formula specifying the group to show in each plot
              ncol = 1, # see what happens if you use 2 here instead!
              scales = "free_y", # let the scale fit each individual set of data
              strip.position = "right") # where is the label for each group?

# Note: the default position for strip labels is on top of each panel.
#   I'm not sure how to place them inside the graphs as shown.