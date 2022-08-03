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
###  Example 12  ###
####################

##########################
##  Logistic Regression ##
##########################

# Reading in data
data <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter13/credit_card_and_income.csv')
colnames(data) # check column names

# Fitting in logistic regression model
logit.reg <- glm(y ~ income, data = data, family = 'binomial')

# To view a summary of the logistic regression model
summary(logit.reg)
