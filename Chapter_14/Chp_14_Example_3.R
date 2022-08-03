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
###  Example 3   ###
####################

###################
## One-Way ANOVA ##
###################

# Reading in data
y <- c(5, 1, 11, 2, 8, 0, 1, 4, 6, 3, 13, 9, 8, 15, 7)
group <- rep(c('A', 'M', 'C'), times = c(5, 5, 5))

# To find value of F test statistic that would have a P-value of < 0.05
qf(0.95, df1 = 2, df2 = 12)

# To get the ANOVA table
myAnova <- aov(y ~ group)
summary(myAnova)

# Given the F statistic, you can also compute the P-value using the `pf()` function
pf(6.43, df1 = 2, df2 = 12, lower.tail = FALSE)
