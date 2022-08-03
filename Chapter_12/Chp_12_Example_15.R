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
data <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter12/highschool_female_athletes.csv')
colnames(data) #check column names

# Fitting regression model
lin.reg <- lm(maxBP..lbs. ~ BP60, data = data)

# To find a 95% confidence for the population mean for x = 11
predict(lin.reg, newdata = data.frame(BP60 = 11), 
        interval='confidence', se.fit = TRUE)

# To find a 95% prediction interval for a single observation of x = 11
predict(lin.reg, newdata = data.frame(BP60=11), 
        interval='prediction')





