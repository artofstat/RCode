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
data <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter10/text_and_graph.csv')

# To subset data to make the two groups
text_and_graph <- subset(data, Graph == 'Yes')
text_only <- subset(data, Graph == 'No')

# To find sample mean, sample standard deviation, and sample size
xbar_1 <- mean(text_and_graph$Rating)
xbar_2 <- mean(text_only$Rating)
sd_1 <- sd(text_and_graph$Rating)
sd_2 <- sd(text_only$Rating)
n_1 <- length(text_and_graph$Rating)
n_2 <- length(text_only$Rating)

# To compute the standard error for the difference
se <- sqrt((sd_1 ** 2 / n_1) + (sd_2 ** 2 / n_2))
se

