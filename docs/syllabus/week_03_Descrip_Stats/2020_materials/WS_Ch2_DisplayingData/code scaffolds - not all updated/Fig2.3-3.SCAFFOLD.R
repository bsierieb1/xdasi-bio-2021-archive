library(ggplot2)
# ============================================================================ #
# Read the data file and check it
# ============================================================================ #
guppiesData <- ___
___ # structure
___ # contents

# ============================================================================ #
# Draw a scatterplot with base R
# ============================================================================ #
# The `plot()` function uses the "formula" notation of "y ~ x".
# Here we will plot the son's data on the y-axis and the father's on the x-axis
# using the column names from the data frame (do NOT use dollar sign notation)

plot(___ ~ ___, # y ~ x 
     data = ___, # the data frame
     pch = 16, # point character = dots
     col = "firebrick")

# ============================================================================ #
# Draw a scatterplot with ggplot
# ============================================================================ #

ggplot(data = ___,    # the data frame
       aes(x = ___,  # the father data (column name)
           y = ___)) + # the son data (column name)

  # scatterplots use the `geom_point()` geometry
  geom_point(size = 3, # size of dots
             col = "firebrick") +

  labs(x = "Father's ornamentation", y = "Son's attractiveness") + 
  theme_classic()