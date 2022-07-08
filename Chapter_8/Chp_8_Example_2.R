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
###  Example 2  ###
###################

########################################
## Standard Error and Margin of Error ##
########################################

# Reading in sample proportion data
n <- 1545
phat <- 398 / n

# To compute the standard error
se <- sqrt(phat * (1 - phat) / n)
se

# To compute the margin of error for a confidence level of 95%
me <- 1.96 * se
me