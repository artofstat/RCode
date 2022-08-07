#############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 10  ###
###  Example 4   ###
####################

###############################################################
## Confidence Interval for the Difference of Two Proportions ##
###############################################################

# Reading in data for the first proportion
x1 <- 347
n1 <- 11535
phat1 <- x1 / n1

# Reading in data for the second proportion
x2 <- 327
n2 <- 14035
phat2 <- x2 / n2

# To compute the mean of the difference
mean <- phat1 - phat2

# To compute the standard error of the difference
se <- sqrt((phat1 * (1 - phat1) / n1) + (phat2 * (1 - phat2) / n2))

# To find the zscore for a 95% confidence interval
zscore <- qnorm(0.975)

# To compute a 95% confidence interval for the difference of two proportions
mean + c(-1, 1) * zscore * se

# Alternatively, you can also use the `prop.test()` function
prop.test(c(347, 327), c(11535, 14035), correct = FALSE)
