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
data <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter12/highschool_female_athletes.csv')
colnames(data) #check column names

# Fitting regression model
lin.reg <- lm(maxBP..lbs. ~ BP60, data = data)

# To obtain residual sum of squares
rss <- sum(lin.reg$residuals ** 2)
rrs

# To find total number of observations in the dataset
n <- length(lin.reg$residuals)
n

# To compute residual standard deviation
sqrt(rss / (n - 2))


  
  