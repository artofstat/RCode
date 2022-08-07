############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 13  ###
###  Example 8   ###
####################

##########################################
##  Histogram of Standardized Residuals ##
##########################################

# Reading in data
houses <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter13/house_selling_prices_or.csv')

# Fitting in multiple regression model
linReg <- lm(HP.in.thousands ~ House.Size + Bedrooms, data = houses)
linReg

# To obtain standardized residuals
mtstdres <- rstandard(linReg)

# To create a histogram of the standardized residuals
hist(mtstdres, breaks = 20, col = 'tan', main = 'Histogram',
     xlab = 'Standardized Residual', ylab = 'Frequency')
axis(1, at = seq(-5, 6, by = 1))


