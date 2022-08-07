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
creditCards <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter13/credit_card_and_income.csv')
colnames(creditCards) # check column names

# Fitting in logistic regression model
logitReg <- glm(y ~ income, data = creditCards, family = 'binomial')

# To view a summary of the logistic regression model
summary(logitReg)

# To estimate the probability that someone with an income of 12000 euros has a travel credit card
predict(logitReg, newdata = data.frame(income=c(12)), type = 'response')

# and for someone with an income of 65000 euros
predict(logitReg, newdata = data.frame(income=c(65)), type = 'response')

