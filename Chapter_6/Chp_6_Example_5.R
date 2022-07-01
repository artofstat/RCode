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
###  Example 5  ###
###################

######################################################
## Standard Deviation of a Probability Distribution ##
######################################################

# Reading in the data for the sure strategy
gains_sure <- 500
probs_sure <- 1

# To compute the variance
variance_sure <- sum(((gains_sure - mean(gains_sure)) ** 2) * probs_sure)
variance_sure

# To compute the standard deviation
sqrt(variance_sure)

# Reading in the data for the risk-taking strategy
gains_risk <- c(0, 1000)
probs_risk <- c(0.5, 0.5)

# To compute the variance
variance_risk <- sum(((gains_risk - mean(gains_risk)) ** 2) * probs_risk)
variance_risk

# To compute the standard deviation
sqrt(variance_risk)


