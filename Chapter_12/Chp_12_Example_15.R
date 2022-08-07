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
###  Example 15  ###
####################

##########################################
##  Confidence and Prediction Intervals ##
##########################################

# Reading in data
athletes <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter12/highschool_female_athletes.csv')
colnames(athletes) #check column names

# Fitting regression model
linReg <- lm(maxBP..lbs. ~ BP60, data = athletes)

# To find a 95% confidence for the population mean for x = 11
predict(linReg, newdata = data.frame(BP60 = 11), 
        interval='confidence', se.fit = TRUE)

# To find a 95% prediction interval for a single observation of x = 11
predict(linReg, newdata = data.frame(BP60=11), 
        interval='prediction')





