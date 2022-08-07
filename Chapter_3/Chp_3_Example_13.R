#############################################################
## R code to reproduce statistical analysis in the textbook:
## Agresti, Franklin, Klingenberg
## Statistics: The Art & Science of Learning from Data
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 3   ###
###  Example 13  ###
####################

######################
##   Extrapolation  ##
######################

# Reading in the data:
temps <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter3/central_park_yearly_temps.csv')
attach(temps) # so we can refer to variable names

# Basic scatterplot
plot(x = YEAR, y = ANNUAL, pch = 16, col = 'darkred',
     xlab = 'Year', ylab = 'Average Annual Temperature (F)',
     main = 'Average Annual Temperature in Central Park, \n New York, from 1869 - 2019')

# Fitting in regression model
linReg <- lm(ANNUAL ~ YEAR)
linReg

# Predicting annual average temp for years 2025 and 3000
new <- data.frame(YEAR = c(2025, 3000))
predict(linReg, newdata = new)
