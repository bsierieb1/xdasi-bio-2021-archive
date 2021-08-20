# ============================================================================ #
# Prepare the data
# ============================================================================ #
# read in the data file
salmonSizeData <- ___

# check the structure
___(___)

# ============================================================================ #
# Draw histograms showing frequency data for body mass(base R)
# ============================================================================ #
# default plot:
# -- use "darkred" for the color
# -- add the same label for the x-axis as used in the book
hist(___, # a vector of body mass measurements from your data frame (dollar sign notation)
        col=___, # color
        xlab = ___) # x-axis label

# replot with bin size (interval width) = 0.1
# NOTE: you need to specify the ** number of breaks ** needed to get this bin width
# -- this time, also add x- and y-axis limits
# -- add a plot title: "Salmon Size Distribution"
hist(___,
        ___, # color
        ___, # x-axis label
        breaks = ___, # number of breaks that corresponds to bin width = 0.1
        xlim = c(1,4), # range = 1 to 4
        ylim = ___, # range = 0 to 30
        main = ___) # plot title

# ============================================================================ #
# Draw a histogram of body mass with ggplot
# ============================================================================ #

# Draw a histogram similar the one you made above for ** body mass **
ggplot(data = ___, # enter the name of the data frame
       aes(x = ___)) + # just the name of the column containing the body mass
  geom_histogram(fill = "firebrick", # a dark red color
                 col = "black",      # this is for the outlines
                 binwidth = 0.1,     # interval width
                 boundary = 0, closed = "left") + # how to place the breaks
  labs(x = ___, y = ___) + # use the same labels as before
  xlim(1,4) + # same x-limit as before
  theme_classic() + # the overall look
  theme(axis.title.x = element_text(face="bold"), # make the labels boldface
        axis.title.y = element_text(face="bold"))

# quick plot (shortcut), with no special formatting
qplot(___, # column name
         data = ___, # name of the data frame 
         geom = "histogram")


# ============================================================================ #
# Draw histograms showing frequency data for body length (base R vs. ggplot)
# ============================================================================ #

# histogram in base R
# -- specify a vector containing the length data (dollar sign notation)
# -- use "lightblue" for the color
# -- add 20 breaks
# -- add an x-axis label: "Length (mm)"
# -- add a main title: "Salmon Length Distribution"
hist(___, # the length data
        ___, # color
        ___, # x-axis label
        ___, # number of breaks
        ___) # main title

# histogram of lengths using ggplot
#  -- use the same color, binwidth (use 10mm), and x-axis label as above for the length data
ggplot(data = ___, aes(x = lengthMm)) + 
  geom_histogram(fill = ___, 
                 col = "black", # this is for the outline
                 binwidth = ___, # here specify bin with (not number of breaks)
                 boundary = 0, closed = "left") + 
  labs(___, ___) + # x- and y-axis labels
  theme_classic() +
  theme(axis.title.x = element_text(face="bold"),   # makes the labels foldface
        axis.title.y = element_text(face="bold")) +
  ggtitle(___) + # the main plot title
  theme(plot.title = element_text(hjust = 0.5)) # this centers the main title

# quick plot with ggplot
qplot(___, # length column (just the name; no dollar sign notation) 
         data = ___, # the data frame 
         geom = "histogram")

# ============================================================================ #
# Scatterplot
# ============================================================================ #
# Are length and weight correlated? Let's check
# (we will cover this in class soon)

plot(x=___, # length vector (use dollar sign notation)
     y=___,  # mass vector (use dollar sign notation)
     col="darkred", # dark red
     xlab="Length (mm)", # length label as above
     ylab="Mass (kg)") # mass label as above
# this draws the best-fit line for the data
abline(lm(y ~ x, data = ___)) # enter data frame
