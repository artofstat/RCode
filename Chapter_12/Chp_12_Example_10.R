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
data <- read.csv(file='https://img1.wsimg.com/blobby/go/bbca5dba-4947-4587-b40a-db346c01b1b3/downloads/High_School_Female_Athletes_Strength.csv?ver=1657874961226')
colnames(data) # check column names
attach(data) # so we can refer to variable names

# To obtain correlation between maxBP and BP60
r <- cor(maxBP..lbs., BP60)
r_squared <- r ** 2
r_squared

# Alternatively, you can fit a regression and check the summary
lin.reg <- lm(maxBP..lbs. ~ BP60, data = data)
summary(lin.reg)$r.squared





