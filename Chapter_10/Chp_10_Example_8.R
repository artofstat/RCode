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
###  Example 8   ###
####################

################################################################
## Confidence Interval for the Difference of Two Sample Means ##
################################################################

# Reading in data
data <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter10/text_and_graph.csv')

# To subset data to make the two groups
text_and_graph <- subset(data, Graph == 'Yes')
text_only <- subset(data, Graph == 'No')

# To find a 95% confidence interval for the difference of two means
t.test(text_and_graph$Rating, text_only$Rating, conf.level = 0.95)
