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
###  Example 7   ###
####################

###########################################################
## Standard Error for the Difference of Two Sample Means ##
###########################################################

# Reading in data
effectiveness <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter10/text_and_graph.csv')

# To subset data to make the two groups
textAndGraph <- subset(effectiveness, Graph == 'Yes')
textOnly <- subset(effectiveness, Graph == 'No')

# To find sample mean, sample standard deviation, and sample size
sd1 <- sd(textAndGraph$Rating)
sd2 <- sd(textOnly$Rating)
n1 <- length(textAndGraph$Rating)
n2 <- length(textOnly$Rating)

# To compute the standard error for the difference
se <- sqrt((sd1 ** 2 / n1) + (sd2 ** 2 / n2))
se

