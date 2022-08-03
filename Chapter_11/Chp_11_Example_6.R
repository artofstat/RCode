#############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 11  ###
###  Example 6   ###
####################

#############################
## Testing Goodness-of-Fit ##
#############################

# Reading in data:
observed <- c(6022, 2001)
expected <- c(0.75, 0.25)

# To perform a chi-squared test for goodness of fit
chisq.test(x = observed, p = expected)
