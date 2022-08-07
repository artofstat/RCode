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
###  Example 4  ###
###################

#################################
## Two-Sided Significance Test ##
#################################

# To make a two-sided significance test about a population proportion, you can use
prop.test(x = 637, n = 1353, p = 0.5, alternative = 'two.sided', 
          conf.level = 0.95, correct = FALSE)

# Alternatively, you can also do the manual computation
x <- 637
n <- 1353
phat <- x / n
p0 <- 0.5 # the value that p takes in the null hypothesis
se0 <- sqrt(p0 * (1 - p0) / n)
z <- (phat - p0) / se0

# To compute the p value for a two-sided alternative hypothesis
2 * pnorm(z)

