# generate estimate for Placebo population using Placebo sample
# kcg 2020-02-27

Placebo = c(54,51,58,44,55,52,42,47,58,46)

# estimate the population variance: sigma^2 = df * s^2 / chisq_est(0.5,9)
chisq_est = qchisq(0.5, length(Placebo)-1)
chisq_est  # 8.342

pop_sd_est = sqrt( (length(Placebo)-1)*sd(Placebo) / chisq_est )
pop_sd_est  # 2.4839

# simulate a population using the estimated population mean and sd
pop_mean_est = mean(Placebo)
pop = rnorm(120,mean=pop_mean_est,sd=pop_sd_est)

hist(pop, breaks=24, freq=FALSE)
xfit = seq(40,60,length=100)
yfit = dnorm(xfit,mean=pop_mean_est,sd=pop_sd_est)
lines(xfit,yfit,col="blue",lwd = 2)

# check sample
mean(pop)
sd(pop)


write.table(pop,file="placebo_pop.csv",
            row.names = FALSE, col.names = FALSE, quote = FALSE)

#####################

placebo_pop = read.table("placebo_pop.csv")
placebo_pop = placebo_pop[,1]
hist(placebo_pop, breaks=20, freq=FALSE)
xfit = seq(40,60,length=100)
yfit = dnorm(xfit,mean=mean(placebo_pop),sd=sd(placebo_pop))
lines(xfit,yfit,col="blue",lwd = 2)
