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
###  Example 8  ###
###################

##############################################
## One-Sided Significance Test About a Mean ##
##############################################

# Reading in the data
anorexia <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter9/anorexia.csv')
attach(anorexia) # so we can refer to variable names

# To perform a one-sided significance test about the mean
t.test(x = cogchange, mu = 0, alternative = 'greater')

# Alternatively, you can also do the manual computation
x <- cogchange
n <- length(cogchange)
xbar <- mean(x)
se <- sd(x) / sqrt(n)
mu0 <- 0 # the value that mu takes in the null hypothesis
tStatistic <- (xbar - mu0) / se

# To compute the p value for a one-sided significance test
pt(tStatistic, df= n - 1, lower.tail = FALSE)

