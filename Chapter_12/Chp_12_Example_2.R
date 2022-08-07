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
###  Example 2   ###
####################

#################
## Scatterplot ##
#################

# Reading in data
athletes <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter12/highschool_female_athletes.csv')
colnames(athletes) #check column names
attach(athletes) # so we can refer to variable names

# To create a scatterplot
plot(x = BP60, y = maxBP..lbs., pch = 16, col = 'darkred',
     main = 'Data on 57 Female High School Athletes',
     xlab = 'Number of 60 lbs. Bench Presses',
     ylab = 'Maximum Bench Press (lbs)')
