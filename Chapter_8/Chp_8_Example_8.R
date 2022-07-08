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
###  Example 8  ###
###################

##################################################################
## Standard Error and Confidence Interval for a Population Mean ##
##################################################################

# Reading in sample mean data:
xbar <- 2.94
n <- 1555
s <- 2.84

# To compute the standard error
se <- s / sqrt(n)
se

# To find the margin of error for a confidence level of 95%
zscore <- qnorm(0.975)
me <- zscore * se
me

# to compute a 95% confidence interval for the population mean
xbar + c(-1, 1) * me
