#############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 8  ###
###  Example 10 ###
###################

###############
## Finding n ##
###############

# Reading in sample  data
s <- 3

# Setting 95% confidence level
zscore = qnorm(0.975)

# Setting the margin of error to what we need
me <- 1

# To compute the number of samples required to acquire our wanted margin of error
n <- (s ** 2) * (zscore ** 2) / (me ** 2)
round(n)
