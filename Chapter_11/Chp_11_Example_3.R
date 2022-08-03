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
###  Example 3   ###
####################

###########################
## Chi-Squared Statistic ##
###########################

# Reading in data:
mytable <- as.table(matrix(c(29, 178, 135, 83, 494, 277, 104, 314, 119), 
                           nrow = 3, byrow = TRUE, 
                           dimnames = list(income = 
                                             c('above', 'average', 'below'),
                                           happy = 
                                             c('not', 'pretty', 'very'))))

# To perform a chi-squared test, you can use the `chisq.test()` function
mytest <- chisq.test(mytable)

# To view the chi-squared statistic
mytest$statistic

