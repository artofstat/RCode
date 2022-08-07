#############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 10  ###
###  Example 14  ###
####################

###############################################
## Comparing Means for Two Dependent Samples ##
###############################################

# Reading in data
reactionTimesPaired <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter10/paired_reaction_times.csv')

# To compare the means for two dependent samples, you can add the `paired = TRUE` 
# as another argument for the `t.test()` function
t.test(reactionTimesPaired$Yes, reactionTimesPaired$No, paired = TRUE)

