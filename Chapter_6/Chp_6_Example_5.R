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
gainsSure <- 500
probsSure <- 1

# To compute the variance
varianceSure <- sum(((gainsSure - mean(gainsSure)) ** 2) * probsSure)
varianceSure

# To compute the standard deviation
sqrt(varianceSure)

# Reading in the data for the risk-taking strategy
gainsRisk <- c(0, 1000)
probsRisk <- c(0.5, 0.5)

# To compute the variance
varianceRisk <- sum(((gainsRisk - mean(gainsRisk)) ** 2) * probsRisk)
varianceRisk

# To compute the standard deviation
sqrt(varianceRisk)


