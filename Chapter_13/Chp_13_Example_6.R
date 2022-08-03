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
###  Example 6   ###
####################

#############################################################
##  Hypothesis Test for Multiple Regression Parameter Beta ##
#############################################################

# Reading in data
data <- read.csv(file='https://img1.wsimg.com/blobby/go/bbca5dba-4947-4587-b40a-db346c01b1b3/downloads/College_female_Athletes.csv?ver=1657874961384')
colnames(data) #check column names

# To obtain the summaries for the variables
summary(data$TBW)
summary(data$HGT)
summary(data$BF)
summary(data$AGE)

# Fitting in multiple regression model
lin.reg <- lm(TBW ~ HGT + BF + AGE, data = data)

# To obtain a summary of the regression model
summary(lin.reg)
