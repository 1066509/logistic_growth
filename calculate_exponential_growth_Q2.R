#Script to calculate the population size at t = 4980

#Parameters
N0 <- 976
r <- 0.01004
K <- 60000000000
t <- 4980

#Exponential growth at this given t
N_exponential <- N0 * exp(r * t)
N_exponential

#The output is 5.06e+24.

#Logistic growth at this given t
N_logistic <- K + 0*t
N_logistic

#The output is the carrying capacity: 6e+10. 
#This is because at this given t, the population under a logistic growth curve has already reached the carrying capacity

