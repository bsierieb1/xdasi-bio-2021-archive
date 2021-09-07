library(ggplot2)
# ============================================================================ #
# Read the data file and check it
# ============================================================================ #
# read in the data file
# do not specify stringsAsFactors (it will default to FALSE in R 4.0 or above)
avianMalaria <- ___
___ # structure
___ # contents (first 6 lines)

# ============================================================================ #
# Make a contingency table
# ============================================================================ #
# specify the response and then the treatment variables
avianMalaria.table = table(___, ___)

# add "marginal" totals: total counts across each row and column
addmargins(___, # the table name
           margin = c(1,2), # both dimensions
           FUN = sum, # function = sum
           quiet = TRUE) # don't report on order of computation

# ============================================================================ #
# Make a grouped bar graph with base R
# ============================================================================ #

# this is an approximation of the figure shown
# -- label the y-axis "Frequency"
# -- add colors "firebrick" and "goldenrod1"
# -- make border = FALSE and legend.text = TRUE
barplot(___, # the table name
        ___ = ___, # y-axis label
        beside=TRUE, # put bars side by side
        space = c(0.2,0.2,0.8,0.2), # how much space between bars?
        col = c(___,___),
        border=___,
        legend.text=___
)

# ============================================================================ #
# Make a grouped bar graph with ggplot
# ============================================================================ #

# this is an approximation of the figure shown (details vary slightly)

# ggplot arguments:
#  `fill` is used for the "response" variable
#  `position` controls the placement of bars
#  `scale_fill_manual` is optional and controls the colors
# -- use the same colors
# -- label the x-axis "Treatment" and the y-axis "Frequency"

ggplot(___, # the original data frame 
       aes(x = ___, # the name of the treatment column 
           fill = ___)) + # the name of the response column 

  geom_bar(stat = "count", # counts (vs. frequency)
           position = position_dodge2(preserve="single")) + # side-by-side

  scale_fill_manual(values=c(___,___)) + # use the same colors
  labs(x = ___, y = ___) + # axis labels
  
  # use the `seq()` command to specify the y-axis breaks from 0 to 25 by 5
  scale_y_continuous(breaks = seq(from = ___, to = ___, by = ___)) +
  theme_classic() +
  theme(legend.title = element_blank()) # don't include a legend title

# ============================================================================ #
# Make a mosaic plot with base R
# ============================================================================ #
# mosaic plots seem to be easier in base R than in ggplot
# check out `ggmosaic()` if you want to try making these with ggplot

# here we approximate the figure without futzing with the axes and labels
# the contingency table needs to be flipped first by transposing it with `t()`
mosaicplot( t(___), # the name of the contingency table
            col = ___, # use the same colors 
            sub = "Treatment", 
            ylab = "Relative frequency",
            border=FALSE,
            main = "") # don't include a figure title
