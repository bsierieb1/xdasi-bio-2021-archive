library(ggplot2)
# ============================================================================ #
# Read the data file and check it
# ============================================================================ #
salmonSizeData <- read.csv("data/Fig2.2-5_SalmonBodySize.csv")
str(salmonSizeData)

# ============================================================================ #
# Draw histograms showing frequency data for body mass(base R)
# ============================================================================ #
# default plot:
# -- use "darkred" for the color
# -- add a label for the x-axis
hist(salmonSizeData$massKg,
     col="darkred",
     xlab = "Body mass (kg)")

# replot with bin size (interval width) = 0.1
# NOTE: you need to specify the ** number of breaks ** needed to get this bin width
# -- this time, add x- and y-axis limits
hist(salmonSizeData$massKg,
     col="darkred",
     breaks = 20, # number of breaks that corresponds to bin width = 0.1
     xlim = c(1,4),
     ylim = c(0,30),
     xlab = "Body mass (kg)",
     main = "Salmon Size Distribution")

# ============================================================================ #
# Draw a histogram of body mass with ggplot
# ============================================================================ #

# Draw a histogram similar the one you made above for ** body mass **
ggplot(data = salmonSizeData, aes(x = massKg)) + 
  geom_histogram(fill = "firebrick", col = "black", binwidth = 0.1, 
                 boundary = 0, closed = "left") + 
  labs(x = "Body mass (kg)", y = "Frequency") +
  xlim(1,4) + 
  theme_classic() +
  theme(axis.title.x = element_text(face="bold"),
        axis.title.y = element_text(face="bold"))

# quick plot (shortcut), with no special formatting
qplot(massKg, 
      data = salmonSizeData, geom = "histogram")


# ============================================================================ #
# Draw histograms showing frequency data for body length (base R vs. ggplot)
# ============================================================================ #

# histogram in base R
# -- specify a vector containing the length data (dollar sign notation)
# -- use "lightblue" for the color
# -- add 20 breaks
# -- add an x-axis label: "Length (mm)"
# -- add a main title: "Salmon Length Distribution"
hist(salmonSizeData$lengthMm,
     col="lightblue",
     xlab = "Length (mm)",
     breaks=20,
     main = "Salmon Length Distribution")

# histogram using ggplot
#  -- use the same color and number of breaks, and x-axis label as above
ggplot(data = salmonSizeData, aes(x = lengthMm)) + 
  geom_histogram(fill = "lightblue", 
                 col = "black", # this is for the outline
                 binwidth = 10, # here specify bin with (not number of breaks)
                 boundary = 0, closed = "left") + 
  labs(x = "Length (mm)", y = "Frequency") +
  theme_classic() +
  theme(axis.title.x = element_text(face="bold"),
        axis.title.y = element_text(face="bold")) +
  ggtitle("Salmon Length Distribution") +
  theme(plot.title = element_text(hjust = 0.5))

# quick plot with ggplot
qplot(lengthMm, data = salmonSizeData, geom = "histogram")

# ============================================================================ #
# Scatterplot
# ============================================================================ #
# Are length and weight correlated? Let's check
# (we will cover this in class soon)
x=salmonSizeData$lengthMm 
y=salmonSizeData$massKg
plot(x, y,
     col="darkred",
     xlab="Length (mm)",
     ylab="Mass (kg)")
abline(lm(y ~ x, data = salmonSizeData))
