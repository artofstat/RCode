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
###  Example 8  ###
###################

################################
##   Correlation Coefficient  ##
################################

# Reading in the data: 
internet <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter3/InternetUse.csv')
attach(internet) # so we can refer to variable names

# To find the correlation coefficient between internet use and facebook use
cor(Internet.Penetration, Facebook.Penetration)
