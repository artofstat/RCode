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
meters_200 <- c(24.48, 23.49, 23.26, 24.32, 24.09, 24.67)
javelin <- c(39.39, 46.06, 36.36, 37.77, 40.93, 33.42)

# To compute the z-scores of each athlete for both events:
z_scores_meters_200 <- (meters_200 - mean(meters_200)) / sd(meters_200)
z_scores_javelin <- (javelin - mean(javelin)) / sd(javelin)

# Rounding z scores to 2 decimal places
round(z_scores_meters_200, 2)
round(z_scores_javelin, 2)

