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
###  Example 9   ###
####################

###########################################
## Significance Test Comparing Two Means ##
###########################################

# Reading in the data
cellPhoneReactions <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter10/cell_phone_reaction_times_long.csv')

# To subset data to make the two groups
cell <- subset(cellPhoneReactions, Group == 'Cell')
control <- subset(cellPhoneReactions, Group == 'Control')

# To make a hypothesis test comparing the two means 
t.test(cell$ReactionTime, control$ReactionTime)

