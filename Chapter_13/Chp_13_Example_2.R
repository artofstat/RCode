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
###  Example 2   ###
####################

##########################
##  Multiple Regression ##
##########################

# Reading in data
data <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter13/house_selling_prices_or.csv')
colnames(data) #check column names

# Fitting in multiple regression model
lin.reg <- lm(House.Price..USD. ~ House.Size + Bedrooms, data = data)
lin.reg

# To predict the selling price of the given home and find its corresponding 95% confidence interval
new <- data.frame(House.Size = 1679, Bedrooms = 3)
predict(lin.reg, newdata = new, interval = 'confidence')




