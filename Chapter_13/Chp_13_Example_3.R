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
###  Example 3   ###
####################

#####################################################
##  Multiple Correlation Coefficient and R-Squared ##
#####################################################

# Reading in data
houses <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter13/house_selling_prices_or.csv')
colnames(houses) #check column names

# Fitting in multiple regression model
linReg <- lm(HP.in.thousands ~ House.Size + Bedrooms, data = houses)
linReg

# To get the ANOVA table for the regression model
aov <- anova(linReg)
aov

# To compute R squared using sum of squares
tss <- sum(aov$`Sum Sq`)
rss <- aov$`Sum Sq`[3]
rSquared <- (tss - rss) / tss
rSquared

# To find the multiple correlation coefficient
r <- sqrt(rSquared)
r

# To verify that the output for R Squared is correct using the manual computation, 
# you can use the `summary()` function on our model; the R squared is shown there as well
summary(linReg)


