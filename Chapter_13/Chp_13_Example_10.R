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
###  Example 10  ###
####################

##########################
##  Indicator Variables ##
##########################

# Reading in data
houses <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter13/house_selling_prices_or.csv')
colnames(houses) #check column names

# Fitting in multiple regression model
linReg <- lm(House.Price..USD.~ House.Size + Condition, data = houses)
summary(linReg)
