############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 15  ###
###  Example 3   ###
####################

#################################################
## Wilcoxon Test: Finding Ranks (Large Sample) ##
#################################################

# Reading in data:
data <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter15/reaction_time_long.csv')
head(data)

# To assign ranks to the values
data$Rank <- rank(data$response)

# To subset the data
phone_ranks <- subset(data, group == 'phone')$Rank
control_ranks <- subset(data, group == 'control')$Rank

# To perform a Wilcoxon test
wilcox.test(phone_ranks, control_ranks)
