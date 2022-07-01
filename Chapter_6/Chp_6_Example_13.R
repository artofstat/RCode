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
###  Example 13 ###
###################

###########################
## Binomial Distribution ##
###########################

# To find the probability that 0 women from the management training pool 
# of size 10 are selected for promotion assuming no gender bias
dbinom(0, size = 10, prob = 0.5)
