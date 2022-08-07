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
###  Example 5   ###
####################

###############################
## Inference About the Slope ##
###############################

# Reading in data
athletes <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter12/highschool_female_athletes.csv')
colnames(athletes) #check column names

# Fitting regression model
linReg <- lm(maxBP..lbs. ~ BP60, data = athletes)

# To view a summary of the regression model which includes the t-statistic and corresponding p-value
# for the null hypothesis that the slope for BP60 = 0
summary(linReg)



