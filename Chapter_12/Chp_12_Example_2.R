## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 12  ###
###  Example 2   ###
####################

#################
## Scatterplot ##
#################

# Reading in data
data <- read.csv(file='https://img1.wsimg.com/blobby/go/bbca5dba-4947-4587-b40a-db346c01b1b3/downloads/High_School_Female_Athletes_Strength.csv?ver=1657874961226')
colnames(data) #check column names
attach(data) # so we can refer to variable names

# To create a scatterplot
plot(x = BP60, y = maxBP..lbs., pch = 16, col = 'darkred',
     main = 'Data on 57 Female High School Athletes',
     xlab = 'Number of 60 lbs. Bench Presses',
     ylab = 'Maximum Bench Press (lbs)')
