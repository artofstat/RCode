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
###  Example 10  ###
####################

#########################################
## The Squared Correlation Coefficient ##
#########################################

# Reading in data
athletes <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter12/highschool_female_athletes.csv')
attach(athletes) # so we can refer to variable names

# To obtain correlation between maxBP and BP60
r <- cor(maxBP..lbs., BP60)
rSquared <- r ** 2
rSquared

# Alternatively, you can fit a regression and check the summary
linReg <- lm(maxBP..lbs. ~ BP60, data = athletes)
summary(linReg)$r.squared





