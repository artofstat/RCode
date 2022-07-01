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
###  Example 12 ###
###################

############################
## Binomial Probabilities ##
############################

# To find the probability of 2 matches with 3 candidates with a probability of 0.2 for a match
dbinom(2, size = 3, prob = 0.2)
