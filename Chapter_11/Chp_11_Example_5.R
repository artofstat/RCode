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
data <- read.csv(file='https://img1.wsimg.com/blobby/go/bbca5dba-4947-4587-b40a-db346c01b1b3/downloads/HeadacheRaw.csv?ver=1657293808775')
attach(data) # so we can refer to variable names

# To make a table from the raw data
mytable <- table(drug, outcome)

# To perform a chi-squared test for homogeneity
chisq.test(mytable)
