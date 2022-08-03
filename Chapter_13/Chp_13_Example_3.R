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
data <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter13/house_selling_prices_or.csv')
colnames(data) #check column names

# Fitting in multiple regression model
lin.reg <- lm(HP.in.thousands ~ House.Size + Bedrooms, data = data)
lin.reg

# To get the ANOVA table for the regression model
aov <- anova(lin.reg)
aov

# To compute R squared using sum of squares
tss <- sum(aov$`Sum Sq`)
rss <- aov$`Sum Sq`[3]
r_squared <- (tss - rss) / tss
r_squared

# To find the multiple correlation coefficient
r <- sqrt(r_squared)
r

# To verify that the output for R Squared is correct using the manual computation, 
# you can use the `summary()` function on our model; the R squared is shown there as well
summary(lin.reg)


