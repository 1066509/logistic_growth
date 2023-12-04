# Logistic growth simulation of an *Escherichia coli*
This is a repository containing the code to simulate the growth of an isolate of the bacterium *Escherichia coli* (*E. coli*) in a test tube containing 1ml of growth medium.
<br>
I am looking to estimate the initial population size of the bacterial population (N0), rate of growth (r) and the carrying capacity (K) from experimental data.
<br>

The experimental data used to simulate this growth comes from the 'experiment1.csv' file, downloaded from the **Logistic growth data** project on Open Science Framework's website (contributor Jose Gabriel Nino Barreat).


## Hypotheses
We expect that the bacteria will initially enter a lag phase, where the population will be adjusting to the environment of the growth medium. During this phase, there will be cellular activity, but we do not expect large changes in population size, and the non-transformed graph will likely appear flat during this timeframe.
<br>

We then expect to see an exponential increase in population size, as the bacteria divide via binary fission, with the population doubling in size after each period of generation.
<br>

As the population continues to grow, the resources will be depleted and the waste products will build up in the population. This is a closed system, which means that the resources are not being replenished, and therefore we will not see exponential growth continued for an infinite time period. The resources will begin to become scarce, and at this point, we expect the growth rate of the population to decline. Eventually the population size will remain constant, entering the stationary growth phase, where the number of cells dividing and number of cells dying occur at the same rate. This is the carrying capacity of the bacterial population.


## Methods
**Initial plots**
<br>
I initially plotted the logistic growth curve from the 'experiment1.csv' file using the package ggplot2 to observe the behaviour of the graph.
<br>
I then plotted the log-transformed data to observe a linear relationship between population size and time. 
<br>
These plots can be found in the 'plot_data.R' file within this repository. The versions of the packages which I have used are listed in the 'package-versions.txt' file in the repository.
<br>

**Linear models**
<br>
I then fitted a linear model to the log-transformed data, to estimate the model's parameters using a linear approximation. Firstly, I have created code to output the values for N0 and r, using a value for t which is within the exponential growth section of the graph.
<br>
I have then created code to output the carrying capacity value, using a t value where the graph has reached carrying capacity.
<br>
This code can be found in the 'fit_linear_model.R' file within this repository.
<br>

**Plotting data and linear model**
<br>
Finally, I have plotted the data and the linear models, containing the approximations of initial population size, growth rate and carrying capacity.


## Results
From the models I have run, I found the following estimated values:
<br>

N0 = 7
<br>
This value for N0 I have estimated as 7, after rounding it up from 6.883.
<br>
r = 0.01004
<br>
K = 60,000,000,000
<br>





## Comparing the exponential and logistic models for population size at t = 4980 

I have used code to calculate the population size at time t = 4980, with estimates of the N0 and r values, assuming the population grows exponentially. This code can be viewed in the 'calculate_exponential_growth_Q2.R' file.
<br>
Value ouput: N = 3.626392e+22
<br>

I was then able to compare this to the population size predicted under logistic growth. This is output as the carrying capacity value.
<br>
Value output: N = 6e+10.
<br>

When we have exponential growth, we find that population sizes are able to reach much higher numbers, and are not limited by resource availability or the build up of waste products, as in a logistic growth model. Therefore, this is why we see the much higher population size under an exponential growth curve compared with a logistic growth curve.



## Graphs comparing the exponential growth and logistic growth of the *E. coli* population

I have  plotted these exponential and logistic growth curves together on a singular graph, but have also plotted them separately to see the graph shapes over a set period of time (0 - 4980 minutes). 
<br>
Since the model of exponential growth reaches much higher population numbers over the same period of time, we are unable to see the shape formed by the logistic growth curve when they are plotted together. The separate graphs allow clearer visualisation of the patterns.


The code for these growth curves can be seen in the 'logistic_and_exponential_growth.R' file in the repository and the graph itself can be found as this file:

https://github.com/amccarthykerrigan/logistic_growth/blob/3b26c62ca2202256b650d0a79b7335a66e1f5ae7/Logistic_and_exponential_growth_graphs.png

