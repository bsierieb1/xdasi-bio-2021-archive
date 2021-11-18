# R has a built-in data set called "trees"
trees
str(trees)

# it is more convenient to refer to the columns of the data directly (e.g. Height)
# instead of having to write something like trees$Height - attach the data set to enable this
attach(trees)

# let us explore the relationship between trunk volume and height:
# always start by plotting the data
plot(x = Height,
     y = Volume)

# Volume and Height look like they might co-vary, test for correlation
cor.test(Height, Volume)

# the two variables do indeed co-vary;
# moreover, Volume should depend on Height (think of how the volume of a cylinder is measured),
# so let us build a regression model where Volume is dependent on Height

# let us calculate the slope and the intercept using the formula offered by the least square technique
slope <- cov(Height, Volume) / var(Height)
intercept <- mean(Volume) - slope * mean(Height)

slope
intercept

abline(a = intercept,
       b = slope)

# rather than performing "manual" calculations, lm() can do all this for you
our_model <- lm(formula = Volume ~ Height)
our_model
summary(our_model)

# moreover, R offers a special plotting method for the objects of the class "lm" (outputs of the lm() function):
# several diagnostic plots are produced
# which help you evaluate whether the assumptions of linear regression model (think L.I.N.E.) are fulfilled
plot(our_model)

# since the equality of variance is violated (it clearly increases with increasing Height),
# try transforming one or all of the variables
our_model_t <- lm(formula = log(Volume) ~ Height)

plot(our_model_t)

# variance has become more equal,
# although the distribution of residuals still slightly deviates from normality (but it is close, so probably ok)
