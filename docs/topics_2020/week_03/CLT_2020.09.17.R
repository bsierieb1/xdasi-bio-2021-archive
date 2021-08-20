### XDAS CLT Examples 2020.09.17

##############################################################################
## Example B: Sampling from a continuous uniform distribution
##############################################################################

# random sampling function 
runif.hist = function(size){
  return(
    ggplot(data.frame(trial = rep(1:size), 
                      value = runif(size, 0, 1)), 
           aes(x=value)) +
      geom_histogram(binwidth=.1, fill="indianred1", color="black") +
      ggtitle(paste(size,"random draws from dunif",sep=" ")) +
      theme_classic()
  )
}
ggarrange(runif.hist(size),runif.hist(size),
          runif.hist(size),runif.hist(size), 
          nrow=2, ncol=2)
# ========================================================================== #
# Exercise
# ========================================================================== #
# Try this for samples of size 10, 100, 1000, or 10000:

___
___
___
___


##############################################################################
# Exercise C: Sample distribution of sample means
##############################################################################

# a function that takes two parameters (with defaults):
#   n.samples = number of times to replicate the sampling
#   sample.size = number of observations for each sample
mean.runif.hist = function(n.samples=100, sample.size=10) {
  
  # generate n.samples and compute the sample mean for each sample
  x.bar = replicate(n.samples, mean(runif(sample.size, min=0, max=1)))
  sample.means = data.frame(sample.name = 1:n.samples,
                            sample.mean = x.bar )
  
  # plot the distribution of sample means
  ggplot(sample.means,aes(x=x.bar)) +
    geom_histogram(binwidth=0.02, fill="indianred1", color="black", alpha=0.5) +
    xlim(0,1) +
    
    # below is a trick to limit the number of significant digits
    # displayed for the mean and SD (2 for 100, 3 for 1000, etc.)
    ggtitle(paste("n=",n.samples,", size=",sample.size," (runif)\n",
                  "(mean=", signif(mean(x.bar), log10(n.samples)),
                  ", sd=", signif(sd(x.bar), log10(n.samples)),")",
                  sep="") ) +
    
    # draw vlines for the mean and SD of the sample means
    geom_vline(aes(xintercept=mean(x.bar)), color="turquoise1", size=1) +
    geom_vline(aes(xintercept=mean(x.bar) + sd(x.bar)), 
               color="blue", linetype="dotted", size=0.5) +
    geom_vline(aes(xintercept=mean(x.bar) - sd(x.bar)), 
               color="blue", linetype="dotted", size=0.5)
}
# ========================================================================== #
# Exercise
# ========================================================================== #

# 1) Hold the sample size constant at 10 or 100 and vary n.samples from 10-1000:
#    (You will make 6 plots)

ggarrange(
  ___
  ___
  ___
  
  ___
  ___
  ___

    nrow=2, ncol=3  
)

# 2) Plot the mean of 10, 100, or 1000 independent random samples of size 10 or 100:
#    (You will make 6 plots)

ggarrange(
  ___
  ___
  ___
  
  ___
  ___
  ___
  
nrow=2, ncol=3
)

##############################################################################
# Exercise D: Confidence Interval
##############################################################################

# ========================================================================== #
# Exercise
# ========================================================================== #
# Calculate the 95% CI for 4 samples of sizes: 10, 100, 1000, and 10,000.

# We will use z=1.96, which is technically more correct than using z=2 for 95% CI.
# Since normal is symmetric, we can add and subtract this to get the CI.

Q <- qnorm(0.975) ## number of standard deviations in the interval = 1.96

# mean, SEM, and CI of our samples
for ( i in ___ ) {
  sample <- (runif(___, min=0, max=1)) # sample size
  mean_sample <- ___
  sem <- ___ 
  interval <- c(___, ___)
  
  cat("Sample size:",i,"\nMean:",mean_sample,
      "\n  SEM:",sem,"\n  CI:",interval,"\n\n",fill=FALSE)
}
# ========================================================================== #
