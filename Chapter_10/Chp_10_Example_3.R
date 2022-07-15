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
###  Example 3   ###
####################

#################################################################
## Standard Error for the Difference of Two Sample Proportions ##
#################################################################

# Reading in data for the first proportion
x_1 <- 347
n_1 <- 11535
phat_1 <- x_1 / n_1

# Reading in data for the second proportion
x_2 <- 327
n_2 <- 14035
phat_2 <- x_2 / n_2

# To compute the mean of the difference
mean <- phat_1 - phat_2
mean

# To compute the standard error of the difference
se <- sqrt((phat_1 * (1 - phat_1) / n_2) + (phat_2 * (1 - phat_2) / n_2))
se
