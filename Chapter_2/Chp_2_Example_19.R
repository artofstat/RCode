#############################################################
## R code to reproduce statistical analysis in the textbook:
## Agresti, Franklin, Klingenberg
## Statistics: The Art & Science of Learning from Data
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 2  ###
###  Example 19 ###
###################

#####################
##  Standardizing  ##
#####################

# Reading in the data of the performances of athletes:
meters200 <- c(24.48, 23.49, 23.26, 24.32, 24.09, 24.67)
javelin <- c(39.39, 46.06, 36.36, 37.77, 40.93, 33.42)

# To compute the z-scores of each athlete for both events:
zScoresMeters200 <- (meters200 - mean(meters200)) / sd(meters200)
zScoresJavelin <- (javelin - mean(javelin)) / sd(javelin)

# Rounding z scores to 2 decimal places
round(zScoresMeters200, 2)
round(zScoresJavelin, 2)

