#Script to plot the logistic growth data

growth_data <- read.csv("/cloud/project/experiment1.csv")

#install.packages("ggplot2")
library(ggplot2)

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
  
  scale_y_continuous(trans='log10')

#Added in the y axis as 'N'.  This code will make a log graph of the graph above.

