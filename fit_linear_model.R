#Script to estimate the model parameters using a linear approximation (fitting the linear models)

#install.packages("dplyr")
library(dplyr)
#file.choose()
growth_data <- read.csv("/cloud/project/experiment1.csv") #This step is getting us to paste the directory for the data file we have downloaded


#Case 1. K >> N0, t is small

#Subsetting a portion of the log-transformed data, within the exponential part of the graph
data_subset1 <- growth_data %>% filter(t<1000) %>% mutate(N_log = log(N)) 
#We have to choose a value for t within the exponential phase of the graph

#Run a linear regression on this extracted data subset, to find the slope (r) and intercept (N0) in this portion of the graph
model1 <- lm(N_log ~ t, data_subset1)
summary(model1)

#From model1 we find: Intercept = 6.883 and Slope = 0.01004. The intercept of this model is N0 (initial pop size) and slope is r (rate of change in population size).
#This is a model to find the intercept and gradient of the log graph. We can use these values for plotting the relationship in plot_data_and_model.



#Case 2. N(t) = K

#Subsetting a portion of the log-transformed data, when the graph has reached a constant point: carrying capacity (K)
data_subset2 <- growth_data %>% filter(t>3180) 
#We have to choose a t value where the data has already reached carrying capacity. 
#Choose a number for t about halfway into the time where we have the final carrying capacity.

#Run a linear regression on this extracted data subsetm, to find the intercept (K) at this point in the graph 
model2 <- lm(N ~ 1, data_subset2) 
#We don't need a slope, we need an intercept. This will be a horizontal line, so we don't input an x axis, we just make it 1.
summary(model2)

#From model2 we find: Intercept = 60,000,000,000. The intercept of this model is the carrying capacity.
#We can use this value for plotting the relationship in plot_data_and_model.


