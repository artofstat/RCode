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
###  Example 8   ###
####################

###############################
## Wilcoxon Signed-Rank Test ##
###############################

# Reading in data
before <- c(2.5, 4, 1.5)
after <- c(3, 3.5, 3)

# To perform a Wilcoxon  signed-rank test
wilcox.test(before, after, paired = TRUE, alternative = 'greater')
