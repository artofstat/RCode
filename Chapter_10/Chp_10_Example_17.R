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
###  Example 17  ###
####################

####################
## McNemar's Test ##
####################

# To conduct a McNemar's Test, you can use the `mcnemar.test()` function
mcnemar.test(matrix(c(1921, 16, 58, 5), nrow = 2),
             correct = FALSE)
