#############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 11  ###
###  Example 9   ###
####################

############################
## Standardized Residuals ##
############################

# Reading in data
mytable <- as.table(matrix(c(145, 359, 268, 275, 227, 514, 305, 235), nrow = 2, byrow = TRUE, 
                           dimnames = list(gender = c('female', 'male'),
                                           religiosity = c('very', 'mod.', 'slightly', 'not'))))
# To perform a chi-square test on the data
mytest <- chisq.test(mytable)

# To view the expected cell counts of the data
round(mytest$expected, 1)

# To view residuals (observed - expected)
round(mytable - mytest$expected, 1)

# To view the standardized residuals
round(mytest$stdres, 1)
