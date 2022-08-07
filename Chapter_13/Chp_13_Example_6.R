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
###  Example 6   ###
####################

#############################################################
##  Hypothesis Test for Multiple Regression Parameter Beta ##
#############################################################

# Reading in data
athletes <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter13/college_female_athletes.csv')
colnames(athletes) #check column names

# To obtain the summaries for the variables
summary(athletes$TBW)
summary(athletes$HGT)
summary(athletes$BF)
summary(athletes$AGE)

# Fitting in multiple regression model
linReg <- lm(TBW ~ HGT + BF + AGE, data = athletes)

# To obtain a summary of the regression model
summary(linReg)
