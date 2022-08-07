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
###  Example 4   ###
####################

####################################
##  Estimating Standard Deviation ##
####################################

# Reading in data
athletes <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter13/college_female_athletes.csv')
colnames(athletes) #check column names

# Fitting in multiple regression model
linReg <- lm(TBW ~ HGT + BF + AGE ,data = athletes)
linReg

# To get the ANOVA table for the regression model
aov <- anova(linReg)
aov # viewing ANOVA table
rss <- aov$`Sum Sq`[4]
dfError <- aov$Df[4]

# To estimate standard deviation
s <- sqrt(rss / dfError)
s


