############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 14  ###
###  Example 11  ###
####################

#############################
## Testing for Interaction ##
#############################

# Reading in data
data <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter14/corn_yield.csv')
head(data, 3)

# Fitting in regression model
lin.reg <- lm(yield ~ fertilizer + manure + fertilizer:manure, data = data)

# To get the two-way ANOVA
aov <- anova(lin.reg)
round(aov, 3)
