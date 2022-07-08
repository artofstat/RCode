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
###  Example 3  ###
###################

#########################################################
## Constructing and Interpreting a Confidence Interval ##
#########################################################

# Reading in sample proportion data
x <- 637
n <- 1361
phat <- x / n

# To compute the standard error
se <- sqrt(phat * (1 - phat) / n)
se

# To compute the margin of error for a confidence level of 95%
zscore <- qnorm(0.975)
me <- zscore * se
me

# To compute the 95% confidence interval for the population proportion
phat + c(-1, 1) * me

# Alternatively, you can also use
prop.test(637, 1361, conf.level = 0.95, correct = FALSE)
