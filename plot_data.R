#Script to plot the logistic growth data

growth_data <- read.csv("/cloud/project/experiment1.csv")

#Load packages
if (!require("ggplot2", character.only = TRUE)) {
  install.packages("ggplot2")
  library("ggplot2")
} else {
  library("ggplot2")
}


ggplot(aes(t,N), data = growth_data) + 
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  theme_bw()
#Added in data as our dataset 'growth_data'.


ggplot(aes(t,N), data = growth_data) + 
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  scale_y_continuous(trans='log10') +
  
  theme_bw()
#Added in the y axis as 'N'.  This code will plot the data on a logarithmic scale.