library(fitdistrplus)

# We choose a low number of bootstrap replicates in order to satisfy CRAN running times
# constraint.
# For practical applications, we recommend to use at least niter=501 or niter=1001.

if (requireNamespace ("ggplot2", quietly = TRUE)) {ggplotEx <- TRUE}

# fit an exponential curve

set.seed(123)
s1 <- rexp(50, 1)
f1 <- fitdist(s1, "exp")
b1 <- bootdist(f1, niter= 11) #voluntarily low to decrease computation time

# # plot 95 percent bilateral confidence intervals on y values (probabilities)
# CIcdfplot(b1, CI.level= 95/100, CI.output = "probability")
# if (ggplotEx) CIcdfplot(b1, CI.level= 95/100, CI.output = "probability", plotstyle = "ggplot")

# plot of the previous intervals as a band
CIcdfplot(b1, CI.level= 95/100, CI.output = "probability",
          CI.fill = "pink", CI.col = "red")
if (ggplotEx) CIcdfplot(b1, CI.level= 95/100, CI.output = "probability",
                        CI.fill = "pink", CI.col = "red", plotstyle = "ggplot")

# plot of the previous intervals as a band without empirical and fitted dist. functions
# CIcdfplot(b1, CI.level= 95/100, CI.output = "probability", CI.only = TRUE,
#           CI.fill = "pink", CI.col = "red")
# if (ggplotEx) CIcdfplot(b1, CI.level= 95/100, CI.output = "probability", CI.only = TRUE,
#                         CI.fill = "pink", CI.col = "red", plotstyle = "ggplot")

# # same plot without contours
# CIcdfplot(b1, CI.level= 95/100, CI.output = "probability", CI.only = TRUE,
#           CI.fill = "pink", CI.col = "pink")
# if (ggplotEx) CIcdfplot(b1, CI.level= 95/100, CI.output = "probability", CI.only = TRUE,
#                         CI.fill = "pink", CI.col = "pink", plotstyle = "ggplot")

# plot 95 percent bilateral confidence intervals on x values (quantiles)
CIcdfplot(b1, CI.level= 95/100, CI.output = "quantile")
if (ggplotEx) CIcdfplot(b1, CI.level= 95/100, CI.output = "quantile", plotstyle = "ggplot")
