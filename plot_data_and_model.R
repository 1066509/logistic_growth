#Script to plot data and model

#Load packages
library(ggplot2)

#Read in data set
growth_data <- read.csv("/cloud/project/experiment1.csv")

#Create logistic growth function for plotting the models' estimated parameters 
logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- 7 #This number is from the intercept of model1
  
r <- 0.01004 #This number is from gradient of model1
  
K <- 60000000000 #This number is from the intercept of model2


#Plot the data and model
ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point() +
  
  theme_bw()

  #scale_y_continuous(trans='log10')



#Code to record the packages used in these files:

#sink(file = "package-versions.txt")
#sessionInfo()
#sink()
