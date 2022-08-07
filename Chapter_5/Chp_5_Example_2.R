#############################################################
## R code to reproduce statistical analysis in the textbook:
## Agresti, Franklin, Klingenberg
## Statistics: The Art & Science of Learning from Data
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 5  ###
###  Example 2  ###
###################

###################
##   Randomness  ##
###################

# Rolling a fair 6 sided die 100 times
set.seed(22) # for reproducibility
rolls <- sample(6, 100, replace = TRUE)

# To obtain the cumulative proportion of the rolls
sixes <- rolls == 6
frequency <- cumsum(sixes)
cumulativeFrequency <- frequency / 1:100
cumulativeSum <- cumsum(sixes)
cumulativeProportion <- cumulativeSum / 1:100

# Plot of the cumulative proportion of the rolls
plot(cumulativeProportion, type = 'l',
     main = 'The Cumulative Proportion of Times a 6 Occurs, \n for a Simulation of 100 Rolls of a Fair Die',
     xlab = 'Trial Number', ylab = 'Cumulative Proportion')

