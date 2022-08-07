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
###  Example 5  ###
###################

############################
## Choosing a Sample Size ##
############################

# Reading in sample proportion data
phat <- 0.58
  
# Setting 95% confidence level
zscore <- qnorm(0.975)

# Setting the margin of error to what we need
me <- 0.04

# To compute the number of samples required to acquire our wanted margin of error
n <- (zscore ** 2) * phat * (1 - phat) / (me ** 2)

