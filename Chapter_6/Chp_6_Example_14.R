#############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 6  ###
###  Example 14 ###
###################

#######################################################
## Normal Approximation of the Binomial Distribution ##
#######################################################

# To compute the mean of the binomial distribution
mu <- 500000 * 0.554
mu

# To compute the standard deviation of the binomial distribution
sigma <- round(sqrt(500000 * 0.554 * (1 - 0.554)))
sigma

# To compute an interval of 3 standard deviations within the mean
mu + c(-1, 1) * 3 * sigma


