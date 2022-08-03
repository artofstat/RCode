############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 15  ###
###  Example 2   ###
####################

###############################
## P-Value for Wilcoxon Test ##
###############################

# Reading in data
lotion <- c(2, 4, 5)
tan <- c(1, 3)

# To perform a Wilcoxon Test, you can use the `wilcox.text()` function. 
wilcox.test(lotion, tan, conf.int = TRUE)

# Note that R subtracts n1 * (n1 + 1) / 2 from the test statistic while S-PLUS does not
