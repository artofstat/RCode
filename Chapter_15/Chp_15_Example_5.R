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
###  Example 5   ###
####################

#########################
## Kruskal-Wallis Test ##
#########################

# Reading in data
rare <- c(1.75, 3.15, 3.50, 3.68)
occasional <- c(2.00, 3.20, 3.44, 3.50, 3.60, 3.71, 3.80)
regular <- c(2.40, 2.95, 3.40, 3.67, 3.70, 4.00)
y <- c(rare, occasional, regular)
group <- rep(c('rare', 'occasional', 'regular'), 
             times = c(length(rare), length(occasional), length(regular)))

# To perform a Kruskal-Wallis test
kruskal.test(y ~ group)
