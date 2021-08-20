## Say E. coli divides once every 10 minutes
## Rate = 0.1 divisions per minute  => lambda = 0.1, t=1

## Poisson: Exp(X) = lambda = 0.1 divisions per minute

# probability that 0 divisions happen in the next minute:
ppois(0, lambda=0.1)  # 0.905


## Exponential: Exp(X) = 1 / lambda = 10 minutes between cell divisions

# probability of having to wait more than one minute until the next cell division
pexp(1, rate=0.1, lower.tail = F)  # 0.905


## Poisson for different definitions of rate
#    Rate = 1 cell division per 10 minutes => mu = 1, t=10
#    Rate = 0.1 divisions per minute       => lambda = 0.1, t=1

# Probability is the same that 1 division happens in the next minute, or
#                             10 divisions happen in the next 10 minutes
ppois(1, lambda=0.1)  # 0.995 -- lambda = lambda * t, t=1
ppois(10, lambda=1)   # 0.995 -- lambda = mu = lambda * t, t=10

## Note: The probability that 0 divisions happen in the next time interval
#        is not the same, since different unit intervals are used (1 or 10 minutes)
ppois(0, lambda=0.1) # 0.905
ppois(0, lambda=1)   # 0.368


pexp(1, rate=0.1, lower.tail = T)
ppois(0, lambda=0.1, lower.tail = F)

