#############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 11  ###
###  Example 5   ###
####################

#########################
## Testing Homogeneity ##
#########################

# Reading in data
headaches <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter11/headache_raw.csv')
attach(headaches) # so we can refer to variable names

# To make a table from the raw data
mytable <- table(drug, outcome)

# To perform a chi-squared test for homogeneity
chisq.test(mytable)
