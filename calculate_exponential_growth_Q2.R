#Script to calculate the population size at t = 4980

#Values
N0 <- 7
r <- 0.01004
K <- 60000000000
t <- 4980

#Code for exponential growth at this given t
N_exponential <- N0 * exp(r * t)
N_exponential

#Code for logistic growth at this given t
N_logistic <- K + 0*t
N_logistic
