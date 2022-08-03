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
###  Example 10  ###
####################

#########################
## Fisher's Exact Test ##
#########################

# Reading in data
mytable <- as.table(matrix(c(3, 1, 1, 3), nrow = 2, byrow = TRUE, 
                           dimnames = list(guess = c('milk', 'tea'),
                                           actual = c('milk', 'tea'))))
# To perform a Fisher's exact test
mytest <- fisher.test(mytable)
mytest


