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
###  Example 5   ###
####################

#################################################
## Significance Test Comparing Two Proportions ##
#################################################

# To make a hypothesis test comparing the two proportions
prop.test(c(5, 154), c(88, 619), correct = FALSE)

# Alternatively, you can also make the manual computations to verify the output from the R command above

# Reading in the data 
x1 <- 5
n1 <- 88
x2 <- 154
n2 <- 619

# To compute the sample proportions
phat1 <- x1 / n1
phat2 <- x2 / n2

# Setting null hypothesis
p0 <- 0

# Computing pooled estimate of the common proportion p under the null hypothesis
phat <- (x1 + x2) / (n1 + n2)

# To compute the standard error for the test
se0 <- sqrt(phat * (1 - phat) * ((1 / n1) + (1 / n2)))

# To find the test statistic
z <- ((phat1 - phat2) - p0) / se0

# To compute the p value of the two sided hypothesis test
2 * pnorm(z)
