#############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 9  ###
###  Example 6  ###
###################

#####################################################
## Significance Test About a Population Proportion ##
#####################################################

# To make a one-sided significance test about a population proportion, you can use
prop.test(x = 76, n = 126, p = 0.75, alternative = 'less',
          conf.level = 0.95, correct = FALSE)

# Alternatively, you can also do the manual computations
x <- 76
n <- 126
phat <- x / n
p0 <- 0.75 # the value that p takes in the null hypothesis
se0 <- sqrt(p0 * (1 - p0) / n)
z <- (phat - p0) / se0

# To compute the p value for a one-sided alternative hypothesis
pnorm(z)

