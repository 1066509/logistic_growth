#Script to plot the logistic growth data

#Load packages
if (!require("ggplot2", character.only = TRUE)) {
  install.packages("ggplot2")
  library("ggplot2")
} else {
  library("ggplot2")
}

#Read in data
growth_data <- read.csv("/cloud/project/experiment1.csv")



#Plot the experiment1 data
ggplot(aes(t,N), data = growth_data) + 
  
  geom_point() +
  
  xlab("Time") +
  
  ylab("Population size") +
  
  theme_bw()


#Plot the experiment1 data with a logarithmic scale on the y-axis. This will allow us to observe a linear relationship between x and y
ggplot(aes(t,N), data = growth_data) + 
  
  geom_point() +
  
  xlab("Time") +
  
  ylab("Population size (log10 scale)") +
  
  scale_y_continuous(trans='log10') +
  
  theme_bw()


