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
###  Example 5   ###
####################

####################################
##  Overall F Test for Predictors ##
####################################

# Reading in data
athletes <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter13/college_female_athletes.csv')
colnames(athletes) #check column names

# Fitting in multiple regression models
linReg <- lm(TBW ~ HGT + BF + AGE, data = athletes)

# To view the F-statistic, you can use the summary of the regression model
# You will find the overall F-statistic at the last line of the summary
summary(linReg)
