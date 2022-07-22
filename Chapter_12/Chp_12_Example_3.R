## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 12  ###
###  Example 3   ###
####################

#####################
## Regression Line ##
#####################

# Reading in data
data <- read.csv(file='https://img1.wsimg.com/blobby/go/bbca5dba-4947-4587-b40a-db346c01b1b3/downloads/High_School_Female_Athletes_Strength.csv?ver=1657874961226')
colnames(data) #check column names

# Fitting regression model
lin.reg <- lm(maxBP..lbs. ~ BP60, data = data)

# To view the coefficients of the regression model
lin.reg$coefficients

# To predict max bench press for highest and lowest levels of number of 60 pound bench presses
new <- data.frame(BP60 = c(2, 35))
predict(lin.reg, newdata = new)
