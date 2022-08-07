############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 12  ###
###  Example 14  ###
####################

##################################
##  Residual Standard Deviation ##
##################################

# Reading in data
athletes <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter12/highschool_female_athletes.csv')
colnames(athletes) #check column names

# Fitting regression model
linReg <- lm(maxBP..lbs. ~ BP60, data = athletes)

# To obtain residual sum of squares
rss <- sum(linReg$residuals ** 2)
rss

# To find total number of observations in the dataset
n <- length(linReg$residuals)
n

# To compute residual standard deviation
sqrt(rss / (n - 2))


  
  