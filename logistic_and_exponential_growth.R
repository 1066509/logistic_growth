#Script to plot and compare exponential and logistic growth curves

# Load packages
if (!require("ggpubr", character.only = TRUE)) {
  install.packages("ggpubr")
  library("ggpubr")
} else {
  library("ggpubr")
}

library(ggplot2)


# Exponential growth function
exponential_growth <- function(t) {
  N0 * exp(r*t)
}

# Logistic growth function
logistic_growth <- function(t) {
  (N0 * K * exp(r*t))/(K - N0 + N0 * exp(r*t))
}

# Parameters for both curves
N0 <- 7
r <- 0.01004
K <- 60000000000


# Read in data from CSV file
growth_data <- read.csv("/cloud/project/experiment1.csv")


#Create exponential growth curve
exponential_plot <- ggplot(aes(x = t, y = exponential_growth(t)),
                           data = growth_data) +
  geom_point(colour = "blue", size = 1) +
  labs(x = "Time (mins)", y = "Population Size", title = "Exponential Growth") +
  ylim(0,4e+22) +
  theme_bw() +
  theme(axis.title.x = element_text(size = 12),
        axis.title.y = element_text(size = 12))
exponential_plot


#Create logistic growth curve
logistic_plot <- ggplot(aes(x = t, y = logistic_growth(t)),
                        data = growth_data) +
  geom_point(colour = "red", size = 1) +
  labs(x = "Time (mins)", y = "Population Size", title = "Logistic Growth") +
  theme_bw() +
  theme(axis.title.x = element_text(size = 12),
        axis.title.y = element_text(size = 12))
logistic_plot


#Combine them into one graph
combined_plot <- ggplot(aes(x = t), data = growth_data) +
  geom_point(aes(y = logistic_growth(t)),
            colour = "red", size = 1) +
  geom_point(aes(y = exponential_growth(t)),
            colour = "blue", size = 1) +
  labs(x = "Time (mins)", y = "Population Size \n(log10 scale)", title = "Logistic vs Exponential Growth") +
  ylim(0,4e+22) +
  scale_y_continuous(trans = 'log10') +
  theme_bw() +
  theme(axis.title.x = element_text(size = 12),
        axis.title.y = element_text(size = 12))
combined_plot


#Create a grid of the three plots. 
#I have used a logarithmic y scale for the combined graph, to more easily visualise the patterns of each curve
ggarrange(exponential_plot, logistic_plot, combined_plot, ncol = 2, nrow = 2)
