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
###  Example 9   ###
####################

#########################
##  Plotting Residuals ##
#########################

# Reading in data
data <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter13/house_selling_prices_or.csv')

# Fitting in multiple regression model
lin.reg <- lm(HP.in.thousands ~ House.Size + Bedrooms, data = data)
lin.reg

# To obtain standardized residuals
stdres <- rstandard(lin.reg)

# To plot standardized residuals against house size
plot(stdres ~ data$House.Size, pch = 16, col = 'darkblue',
     main = 'Residual Versus House Size', 
     xlab = 'House Size', ylab = 'Standardized Residual',
     xlim = c(0, 12000), ylim = c(-5, 5))


