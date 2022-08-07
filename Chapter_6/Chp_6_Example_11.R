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
###  Example 11 ###
###################

########################
## Comparing z-Scores ##
########################

# Reading in SAT data
meanSAT <- 500
sdSAT <- 100

# To compute the z-Score of an SAT score of 650
zSAT <- (650 - meanSAT) / sdSAT
zSAT

# Reading in ACT data
meanACT <- 21.0
sdACT <- 4.7

# To compute the z-Score of an ACT score of 30
zACT <- (30 - meanACT) / sdACT
zACT

