library(BayesDA)
data(light)
light

hist(light,breaks=30)

shapiro.test(light)
shapiro.test(light[light>0])

hist(light,breaks=30,xlim=c(-50,50))
points(x=-50:50,
       y=dnorm(-50:50,mean(light),sd(light))*length(light),
       type="l")

hist(light[light>0],breaks=30,xlim=c(-50,50))
points(x=-50:50,
       y=dnorm(-50:50,mean(light[light>0]),sd(light[light>0]))*length(light[light>0]),
       type="l")



median_distribution <- c()
for (i in 1:1000){
  light_resampled <- sample(light,length(light),replace=T)
  median_distribution <- c(median_distribution,median(light_resampled))
}

hist(median_distribution)

plot(ecdf(median_distribution))

median(median_distribution)
median(light)
quantile(median_distribution,c(0.025,0.975))



median_distribution <- c()
for (i in 1:1000){
  light_resampled <- sample(light,length(light),replace=T)+rnorm(length(light), mean = 0, sd = 0.1)
  median_distribution <- c(median_distribution,median(light_resampled))
}

hist(median_distribution)

plot(ecdf(median_distribution))

median(median_distribution)
median(light)
quantile(median_distribution,c(0.025,0.975))



sum(median_distribution < median(median_distribution)-(33-median(median_distribution)) | median_distribution > 33) / length(median_distribution)

t.test(light,mu=33)
