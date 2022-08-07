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
###  Example 6   ###
####################

#############################################
## A 95% Confidence Interval for the Slope ##
#############################################

# Reading in data
athletes <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter12/highschool_female_athletes.csv')
colnames(data) #check column names

# Fitting regression model
linReg <- lm(maxBP..lbs. ~ BP60, data = athletes)

# To compute a 95% confidence interval for the slope, you can use the `confint()` function
confint(linReg, 'BP60', level = 0.95)
