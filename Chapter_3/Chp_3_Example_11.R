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
###  Example 11 ###
###################

##################
##   Residuals  ##
##################

# Reading in the data
ballots <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter3/buchanan_and_the_butterfly_ballot.csv')
attach(ballots) # so we can refer to variable names

# Fitting in regression model
model <- lm(buchanan ~ perot)

# To obtain the residuals
res <- resid(model)

# Residual plot
plot(perot, res, pch = 16, col = 'darkgreen',
     xlab = 'Perot Votes', ylab = 'Residuals',
     main = 'Residual Plot')
abline(0,0)
