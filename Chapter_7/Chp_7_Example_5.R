#############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 7  ###
###  Example 5  ###
###################

##############################################
## Sampling Distribution of the Sample Mean ##
##############################################

# Reading in average salary data
mu <- 150
sigma <- 60
n <- 32

# To compute standard error or the standard deviation of the sample mean
stdev <- round(sigma / sqrt(n), 1)

# To compute the interval you can expect 95% of the average salaries to fall within
mu + c(-1, 1) * 2 * stdev

# To compute the probability that there is a season when is average salary falls below €130, you can use
pnorm(130, mean = 150, sd = 10.6)
