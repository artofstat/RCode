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
###  Example 7  ###
###################

##################################
## Finding Normal Probabilities ##
##################################

# To find the probability that smartphones have a talk-time 1.25 standard deviations 
# below the mean, you can use
pnorm(230, mean = 330, sd = 80)
# or

pnorm(-1.25)

# To find the probability that smartphones have a talk-time 1.25 standard deviations 
# above the mean, you can use
pnorm(430, mean = 330, sd = 80, lower = FALSE)

# or
pnorm(1.25, lower = FALSE)

# To find the probability that smartphones have a talk-time 1.25 standard deviations 
# within the mean, you can use
pnorm(430, mean = 330, sd = 80) - pnorm(230, mean = 330, sd = 80)

# or 
pnorm(1.25) - pnorm(-1.25)
