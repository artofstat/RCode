#############################################################
## R code to reproduce statistical analysis in the textbook:
## Agresti, Franklin, Klingenberg
## Statistics: The Art & Science of Learning from Data
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 3  ###
###  Example 10 ###
###################

############################
##   Regression Equation  ##
############################

# Reading in the data
baseball <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter3/AL_team_statistics.csv')
attach(baseball) # so we can refer to variable names

# Fitting in regression model
linReg <- lm(scoring ~ batting)

# Viewing model
linReg

# From this model, you can obtain the regression equation:
# Team Scoring = -2.32 + 26.07 * Batting Average

# To use this model to predict a given team's score given its batting average,
# you can substitute their batting average in the equation 
-2.32 + 26.07 * 0.27

# or you can use the `predict()` function
new <- data.frame(batting=c(0.27))
predict(linReg, newdata = new)


