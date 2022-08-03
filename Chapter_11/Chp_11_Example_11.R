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
###  Example 11  ###
####################

######################
## Permutation Test ##
######################

# Reading in data
mytable <- as.table(matrix(c(1, 9, 2, 5, 2, 1), nrow = 2, byrow = TRUE, 
                           dimnames = list(Status = c('U.S.', 'International'),
                                           Opinion = c('Hero', 'Criminal', 'Neither'))))
mytable # viewing the table

# To perform a permutation test with 10,000 random permutations
chisq.test(mytable, simulate.p.value = TRUE, B = 10000)
