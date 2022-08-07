#############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 6  ###
###  Example 10 ###
###################

###################################################
## Using z-Scores to Find Interval Probabilities ##
###################################################

# To find the percentage of students that earn a B
pnorm(90, mean = 83, sd = 5) - pnorm(80, mean = 83, sd = 5)

# You can also use z-scores to compute the same percentage
z90 <- (90 - 83) / 5
z80 <- (80 - 83) / 5
pnorm(z90) - pnorm(z80)
