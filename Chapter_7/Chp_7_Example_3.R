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
###  Example 3  ###
###################

###############################################
## Normal Shape of the Sampling Distribution ##
###############################################

# Reading in voter data
p <- 0.538 
n <- 3889

# To find the mean and standard deviation of the sampling distribution
mean <- p 
stdev <- sqrt((p * (1 - p)) / n)

# To compute the interval of possible sample proportions within 3 standard deviations of the mean
mean + c(-1, 1) * 3 * stdev

# To compute the interval of possible sample proportions within 2 standard deviations of the mean
mean + c(-1, 1) * 2 * stdev

# To compute the interval value for the plausible values for the actual population proportion
phat <- 0.531
se <- sqrt((phat * (1 - phat)) / n)
0.531 + c(-1, 1) * 3 * se
