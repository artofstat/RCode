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
###  Example 9  ###
###################

#################################################################
## Using t Distribution for a Confidence Interval for the Mean ##
#################################################################

# Reading in data
x <- c(540, 565, 570, 570, 580, 590, 590, 590, 595, 610, 620)
n <- length(x)
xbar <- mean(x)
s <- sd(x)
se <- s / sqrt(n)

# To compute the t-score for a confidence level of 95% and n-1 degrees of freedom
tscore <- qt(0.975, df = n-1)

# To compute a 95% confidence interval for the population mean
me <- tscore * se
xbar + c(-1, 1) * me

# Alternatively, you can also use the `t.test()` function
t.test(x, conf.level = 0.95)


