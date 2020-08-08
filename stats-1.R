
# 1 Distributions
# http://www.stat.umn.edu/geyer/old/5101/rlook.html?ref=theblueish.com/web
# https://www.econometrics-with-r.org/2-1-random-variables-and-probability-distributions.html
# https://www.cyclismo.org/tutorial/R/probability.html

library(stats)


# binomial distribution
# Bernoulli distributed random 
dbinom(x = 5, size = 10, prob = 0.5)
?dbinom

# P(4≤k≤7), i.e., the probability of observing 4, 5, 6 or 7 successes for B(10,0.5)
# compute P(4 <= k <= 7) using 'dbinom()'
sum(dbinom(x = 4:7, size = 10, prob = 0.5))

# P(4≤k≤7)=P(k≤7)−P(k≤3)
# compute P(4 <= k <= 7) using 'pbinom()'
pbinom(size = 10, prob = 0.5, q = 7) - pbinom(size = 10, prob = 0.5, q = 3)

# set up vector of possible outcomes
k <- 0:10
probability <- dbinom(x = k,
                      size = 10, 
                      prob = 0.5)

# plot the outcomes against their probabilities
plot(x = k, 
     y = probability,
     main = "Probability Distribution Function", type = "o") 

#---------------------------------------

# compute cumulative probabilities
prob <- pbinom(q = k, 
               size = 10, 
               prob = 0.5)

# plot the cumulative probabilities
plot(x = k, 
     y = prob,
     main = "Cumulative Distribution Function", type = "o") 
#--------------------
# espected value
mean(1:6)
d2 = var(1:6)
d2

pi





