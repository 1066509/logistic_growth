# Logistic growth simulation of an *Escherichia coli*
This is a repository containing the code to simulate the growth of an isolate of the bacterium *Escherichia coli* in a test tube containing 1ml of growth medium.
<br>
I am looking to estimate the initial population size of the bacterial population, rate of growth and the carrying capacity from experimental data.
<br>

The experimental data used to simulate this growth comes from the 'experiment1.csv' file, downloaded from the **Logistic growth data** project on Open Science Framework's website.


## Hypotheses
We expect that the bacteria will initially enter a lag phase, where the population will be adjusting to the environment of the growth medium. During this phase, there will be cellular activity, but we do not expect large changes in population size, and the non-transformed graph will likely appear flat during this timeframe.
<br>

We then expect to see an exponential increase in population size, as the bacteria divide via binary fission, with the population doubling in size after each period of generation.
<br>

As the population continues to grow, the resources will be depleted and the waste products will build up in the population. This is a closed system, which means that the resources are not being replenished, and therefore we will not see exponential growth continued for an infinite time period. The resources will begin to become scarce, and at this point, we expect the growth rate of the population to decline. Eventually the population size will remain constant, entering the stationary growth phase, where the number of cells dividing and number of cells dying occur at the same rate. This is the carrying capacity of the bacterial population.


## Methods
I initially plotted the data from the 'experiment1.csv' file using the package ggplot2 to observe the shape of the graph, and then plotted a log-transformed graph of this data to see it presented linearly. This can be found in the 'plot_data.R' file within this repository. The versions of the packages which I have used are listed in the 

## Results






