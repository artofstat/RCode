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
students <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter12/ga_student_survey.csv')
colnames(students) # check column names

# Fitting regression model
linReg <- lm(CGPA ~ HSGPA, data = students)

# To obtain raw residuals
myres <- residuals(linReg)

# To obtain standardized residuals
mystdres <- rstandard(linReg)
