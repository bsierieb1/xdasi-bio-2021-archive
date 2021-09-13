library(ggplot2)
# ============================================================================ #
# Read the data file and check it
# ============================================================================ #
guppiesData <- read.csv("data/Fig2.3-3_guppies.csv")
str(guppiesData) # structure
head(guppiesData) # contents

# ============================================================================ #
# Draw a scatterplot with base R
# ============================================================================ #
# The `plot()` function uses the "formula" notation of "y ~ x".
# Here we will plot the son's data on the y-axis and the father's on the x-axis
# using the column names from the data frame (do NOT use dollar sign notation)

plot(sonAttractiveness ~ fatherOrnamentation, 
     data = guppiesData, # the data frame
     pch = 16, col = "firebrick")

# ============================================================================ #
# Draw a scatterplot with ggplot
# ============================================================================ #

ggplot(data = guppiesData,    # the data frame
       aes(x = fatherOrnamentation,  # the father data
           y = sonAttractiveness)) + # the son data

  # scatterplots use the `geom_point()` geometry
  geom_point(size = 3, # size of dots
             col = "firebrick") +

  labs(x = "Father's ornamentation", y = "Son's attractiveness") + 
  theme_classic()