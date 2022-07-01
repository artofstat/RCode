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
###  Example 9  ###
###################

########################################
## Using z-Scores to Find Percentiles ##
########################################

# To compute the z-Score of an SAT score of 650 in a component
z <- (650 - 500) / 100
z

# To find the percentage of SAT scores higher than 650 for some component
pnorm(650, mean = 500, sd = 100, lower = FALSE)

# or using the z-score
pnorm(z, lower = FALSE)
