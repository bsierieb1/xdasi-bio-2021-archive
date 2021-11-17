minkowski <- function(a,b,r) {
  return( sum(abs(a-b)^r)^(1/r) )
}



# euclidean is more sensitive to outliers - good and bad
poo <- matrix(nrow=0,ncol=2)
for (i in 0:1000){
  poo <- rbind(poo,
               c(i,minkowski(a = runif(1000,-1,1),
                             b = c(runif(1000-i,-1,1),runif(i,-10,10)),
                             r = 2)))
}

plot(poo[,2]~poo[,1])


poo <- matrix(nrow=0,ncol=2)
for (i in 0:1000){
  poo <- rbind(poo,
               c(i,minkowski(a = runif(1000,-1,1),
                             b = c(runif(1000-i,-1,1),runif(i,-10,10)),
                             r = 2)))
}

plot(poo[,2]~poo[,1])



# in high dimensions, the ratio between the nearest and farthest points approaches 1 faster for euclidean distance
par(mfrow=c(2,2))
for (ndim in c(10,100,1000,10000)){
  poo <- c()
  boo <- c()
  for (i in 1:1000) {
    distances_between_random_10 <- replicate(10,
                                             minkowski(a = runif(ndim,-1,1),
                                                       b = runif(ndim,-1,1),
                                                       r = 2))
    poo <- c(poo,
             max(distances_between_random_10)/min(distances_between_random_10))
    
    distances_between_random_10 <- replicate(10,
                                             minkowski(a = runif(ndim,-1,1),
                                                       b = runif(ndim,-1,1),
                                                       r = 1))
    boo <- c(boo,
             max(distances_between_random_10)/min(distances_between_random_10))
  }
  
  boxplot(poo,boo,main=ndim)
}



##############

# independent random are always uncorrelated, but uncorrelatedness does not generally imply independence

a <- seq(-1,1,0.01)
b <- a^2
plot(a,b)
cov(a,b)



##############

# correlation is hardly affected by transformation

z1 <- runif(100,0,1)
z2 <- z1 + rnorm(100,0,0.1)
plot(z1,z2)
cor.test(z1,z2)$estimate
minkowski(z1,z2,2)

plot(z1,z2^2)
cor.test(z1,z2^2)$estimate
minkowski(z1,z2^2,2)

plot(z1,log(z2+1))
cor.test(z1,log(z2+1))$estimate
minkowski(z1,log(z2+1),2)



##############

# generate a random uniform distribution
set.seed(10) # set seed for reproducibility
a <- runif(n = 10,
           min = -10,
           max = 10)
a
# add some random normally distributed noise to generate an imperfectly correlated distribution
b <- a + rnorm(n = 10,
               mean = 0,
               sd = 4)
# plot the two distributions against each other
plot(x = a,
     y = b,
     xlim = c(-10,5),
     ylim = c(-10,8))



# now, calculate covariance
# first, plot the mean
points(x = mean(a),
       y = mean(b),
       cex = 2,
       pch = 16)

# second, draw a rectangle between the mean and the first data point and calculate its area;
# let area be positive if the rectangle is in either I or III quadrants
# and negative if the rectangle is in either II or IV quadrants

areas <- c() # create empty vectors to store area values
area_1 <- (mean(a) - a[1]) * (mean(b) - b[1]) # calculate the area
areas <- c(areas, area_1) # append to the areas vector

rect(xleft = mean(a),
     xright = a[1],
     ybottom = mean(b),
     ytop = b[1],
     border = NA, # do not draw a border
     col = ifelse(test = area_1 > 0,
                  yes = rgb(1, 0, 0, alpha = 0.3), # color red if in I or III quadrant (area>0)
                  no = rgb(0, 0, 1, alpha = 0.3))) # color blue if in II or IV quadrant (area<0)
text(x = mean(c(mean(a), a[1])),
     y = mean(c(mean(b), b[1])),
     labels = round(area_1, 1)) # add text label with the calculated area

# do the same for the rest of the points

for (i in 2:length(a)) {
  area_i <- (mean(a) - a[i]) * (mean(b) - b[i]) # calculate the area
  areas <- c(areas, area_i) # append to the areas vector
  
  rect(xleft = mean(a),
       xright = a[i],
       ybottom = mean(b),
       ytop = b[i],
       border = NA, # do not draw a border
       col = ifelse(test = area_i > 0,
                    yes = rgb(1, 0, 0, alpha = 0.3), # color red if in I or III quadrant (area>0)
                    no = rgb(0, 0, 1, alpha = 0.3))) # color blue if in II or IV quadrant (area<0)
  text(x = mean(c(mean(a), a[i])),
       y = mean(c(mean(b), b[i])),
       labels = round(area_i, 1)) # add text label with the calculated area
}

# sum up all variances and divide by the number of degrees of freedom
sum(areas) / (length(a) - 1)
# does the in-built function to calculate covariance return the same result?
cov(a, b) # yes!



# variance is a special case of covariance where we examine covariance between the variable and itself!
# the same code is above, but b replaced with a

# plot the two distributions against each other
plot(x = a,
     y = a,
     xlim = c(-10,5),
     ylim = c(-10,8))

# first, plot the mean
points(x = mean(a),
       y = mean(a),
       cex = 2,
       pch = 16)

# second, draw a rectangle aetween the mean and the first data point and calculate its area;
# let area ae positive if the rectangle is in either I or III quadrants
# and negative if the rectangle is in either II or IV quadrants

areas <- c() # create empty vectors to store area values
area_1 <- (mean(a) - a[1]) * (mean(a) - a[1]) # calculate the area
areas <- c(areas, area_1) # append to the areas vector

rect(xleft = mean(a),
     xright = a[1],
     ybottom = mean(a),
     ytop = a[1],
     border = NA, # do not draw a border
     col = ifelse(test = area_1 > 0,
                  yes = rgb(1, 0, 0, alpha = 0.3), # color red if in I or III quadrant (area>0)
                  no = rgb(0, 0, 1, alpha = 0.3))) # color blue if in II or IV quadrant (area<0)
text(x = mean(c(mean(a), a[1])),
     y = mean(c(mean(a), a[1])),
     labels = round(area_1, 1)) # add text label with the calculated area

# do the same for the rest of the points

for (i in 2:length(a)) {
  area_i <- (mean(a) - a[i]) * (mean(a) - a[i]) # calculate the area
  areas <- c(areas, area_i) # append to the areas vector
  
  rect(xleft = mean(a),
       xright = a[i],
       ybottom = mean(a),
       ytop = a[i],
       border = NA, # do not draw a border
       col = ifelse(test = area_i > 0,
                    yes = rgb(1, 0, 0, alpha = 0.3), # color red if in I or III quadrant (area>0)
                    no = rgb(0, 0, 1, alpha = 0.3))) # color blue if in II or IV quadrant (area<0)
  text(x = mean(c(mean(a), a[i])),
       y = mean(c(mean(a), a[i])),
       labels = round(area_i, 1)) # add text label with the calculated area
}

# sum up all variances and divide ab the number of degrees of freedom
sum(areas) / (length(a) - 1)
# does the in-built function to calculate covariance return the same result?
cov(a, a) # yes!
# does the in-built function to calculate variance return the same result?
var(a) # yes again!



# covariance is problematic because it is not scaled
cov(a, b)
cov(a, 10*b)

# it can be scaled to the sqrt of variance (=standard deviation) of a and b
cov(a, b) / (sd(a) * sd(b))
cov(a, 10*b) / (sd(a) * sd(10*b))

# and this is the Pearson's coefficient of correlation!
cor.test(x = a,
         y = b,
         method = "pearson")



pearson_t <- function(n,r) { r * sqrt(n - 2) / sqrt(1 - r^2) }

plot(x = seq(-5,5,0.01),
     y = dt(seq(-5,5,0.01),
            length(a)-2),
     type = "l")

abline(v = pearson_t(n = length(a), r = 0.644209))
abline(v = -pearson_t(n = length(a), r = 0.644209))

2*pt(q = pearson_t(n = length(a), r = 0.644209),
     df = length(a)-2,
     lower.tail = FALSE)

cor.test(x = a,
         y = b,
         method = "pearson")$p.value

points(x = seq(-5,5,0.01),
       y = dt(seq(-5,5,0.01),
              3-2),
       type = "l",
       col = "red")

points(x = seq(-5,5,0.01),
       y = dt(seq(-5,5,0.01),
              1000-2),
       type = "l",
       col = "blue")
