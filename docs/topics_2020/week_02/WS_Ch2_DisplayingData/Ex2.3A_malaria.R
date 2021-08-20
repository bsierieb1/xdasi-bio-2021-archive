library(ggplot2)
# ============================================================================ #
# Read the data file and check it
# ============================================================================ #
# read in the data file
# do not specify stringsAsFactors (it will default to FALSE in R 4.0 or above)
avianMalaria <- read.csv("data/Ex2.3A_malaria.csv")
str(avianMalaria) # structure
head(avianMalaria) # contents (first 6 lines)

# ============================================================================ #
# Make a contingency table
# ============================================================================ #
avianMalaria.table = table(avianMalaria$response, avianMalaria$treatment)

# add "marginal" totals: total counts across each row and column
addmargins(avianMalaria.table, margin = c(1,2), FUN = sum, quiet = TRUE)

# ============================================================================ #
# Make a grouped bar graph with base R
# ============================================================================ #

# this is an approximation of the figure shown
barplot(avianMalaria.table,
        ylab = "Frequency",
        beside=TRUE,
        space = c(0.2,0.2,0.8,0.2),
        col = c("firebrick","goldenrod1"),
        border=FALSE,
        legend.text=TRUE
)

# ============================================================================ #
# Make a grouped bar graph with ggplot
# ============================================================================ #

# this is an approximation of the figure shown (details vary slightly)
# ggplot arguments:
# -- `fill` is used for the "response" variable
# -- `position` controls the placement of bars
# -- `scale_fill_manual` is optional and controls the colors
ggplot(avianMalaria, aes(x = treatment, fill = response)) + 
  geom_bar(stat = "count", position = position_dodge2(preserve="single")) +
  scale_fill_manual(values=c("firebrick", "goldenrod1")) +
  labs(x = "Treatment", y = "Frequency") +
  scale_y_continuous(breaks = seq(from = 0, to = 25, by = 5)) + # y-axis
  theme_classic() +
  theme(legend.title = element_blank())

# ============================================================================ #
# Make a mosaic plot with base R
# ============================================================================ #
# mosaic plots seem to be easier in base R than in ggplot
# check out `ggmosaic()` if you want to try making these with ggplot

# here we approximate the figure without futzing with the axes and labels
# the contingency table needs to be flipped first by transposing it with `t()`
mosaicplot( t(avianMalaria.table), 
            col = c("firebrick", "goldenrod1"), 
            sub = "Treatment", 
            ylab = "Relative frequency",
            border=FALSE,
            main = "")
