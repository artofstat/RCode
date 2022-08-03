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
###  Example 12  ###
####################

###########################
## Standardized Residual ##
###########################

# Reading in data:
data <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter12/ga_student_survey.csv')
colnames(data) # check column names

# Fitting regression model
lin.reg <- lm(CGPA ~ HSGPA, data = data)

# To obtain raw residuals
myres <- residuals(lin.reg)

# To obtain standardized residuals
mystdres <- rstandard(lin.reg)
