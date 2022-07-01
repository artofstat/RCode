#############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 6  ###
###  Example 3  ###
###################

########################################
## Mean of a Probability Distribution ##
########################################

# Reading in the data
games <- c(4, 5, 6, 7)
probs <- c(0.125, 0.25, 0.3125, 0.3125)

# To compute the mean of this probability distribution, you can use
sum(games * probs)

# or
weighted.mean(games, probs)

