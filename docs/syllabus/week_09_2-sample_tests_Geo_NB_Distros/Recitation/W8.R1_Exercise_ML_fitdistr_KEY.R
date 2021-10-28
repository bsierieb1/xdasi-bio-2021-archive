real_p <- 0.8
set.seed(99)
my_seq <- rbinom(n = 10,
                 size = 1, 
                 prob = real_p)
my_seq



###
mean(my_seq)



###
likelihood <- function(input_seq, p) {
  likelihood_value <- 1
  for (i in 1:length(input_seq))
  {
    if (input_seq[i] == 1)
    {
      likelihood_value <- likelihood_value * p
    }
    else
    {
      likelihood_value <- likelihood_value * (1 - p)
    }
  }
  return(likelihood_value)
}

'''
likelihood <- function(input_seq, p) {
  likelihood_value <- prod(ifelse(test = input_seq==1,
                                  yes = p,
                                  no = 1-p))
  return(likelihood_value)
}
'''

likelihood(my_seq, real_p)
likelihood(my_seq, real_p-0.1)
likelihood(my_seq, real_p+0.1)
likelihood(my_seq, 0)
likelihood(my_seq, 1)

possible_p_range <- seq(from = 0,
                        to = 1,
                        by = 0.01)
library(ggplot2)
qplot(x = possible_p_range,
      y = likelihood(my_seq, possible_p_range),
      geom = 'point',
      xlab = 'probability of success',
      ylab = 'likelihood of observing my_seq')

qplot(x = c(0,0.4,0.6,1),
      y = likelihood(my_seq, c(0,0.4,0.6,1)),
      geom = 'point',
      xlab = 'probability of success',
      ylab = 'likelihood of observing my_seq')

qplot(x = c(0.4,0.64,0.76,1),
      y = likelihood(my_seq, c(0.4,0.64,0.76,1)),
      geom = 'point',
      xlab = 'probability of success',
      ylab = 'likelihood of observing my_seq')

qplot(x = c(0.64,0.78,0.86,1),
      y = likelihood(my_seq, c(0.64,0.78,0.86,1)),
      geom = 'point',
      xlab = 'probability of success',
      ylab = 'likelihood of observing my_seq')


optimize_p_for_likelihood <- function(p) {
  return(likelihood(my_seq, p))
}
optimize(f = optimize_p_for_likelihood,
         interval = c(0, 1),
         maximum = TRUE)



###
library(fitdistrplus)
fitdist(data = my_seq,
        distr = "binom",
        fix.arg = list(size = 1),
        start = list(prob = 0.5))

fitdist(data = rnorm(10,8,3),
        distr = "norm",
        start = list(mean = 1,
                     sd = 1))
