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
mean_SAT <- 500
sd_SAT <- 100

# To compute the z-Score of an SAT score of 650
z_SAT <- (650 - mean_SAT) / sd_SAT
z_SAT

# Reading in ACT data
mean_ACT <- 21.0
sd_ACT <- 4.7

# To compute the z-Score of an ACT score of 30
z_ACT <- (30 - mean_ACT) / sd_ACT
z_ACT
