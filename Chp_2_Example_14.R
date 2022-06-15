#############################################################
## R code to reproduce statistical analysis in the textbook:
## Agresti, Franklin, Klingenberg
## Statistics: The Art & Science of Learning from Data
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 2  ###
###  Example 14 ###
###################

#####################
## Empirical Rule  ##
#####################

# Reading in values from file:
Heights <- read.csv(file='http://www.artofstats.com/data/chapter2/heights.csv')

# The original dataset contains height measurements for men and women 
# To filter out the height measurements for men and omit the height of 92 inches, you can use `filter()` from the dplyr package
# To install the dplyr package, type install.packages('dplyr')
library(dplyr)
Heights = Heights %>% filter(GENDER == 'Female', HEIGHT != 92)
attach(Heights) # so we can refer to variable names

# Creating Histogram using ggplot2
# To install the ggplot2 library, type install.packages('ggplot2')
library(ggplot2)
ggplot(Heights, aes(x=HEIGHT, y=100*(..count../sum(..count..)))) + 
  geom_histogram(center=0, binwidth=1, color="black", fill="orchid") +
  labs(x="Height (in)", y="Percent (%)",  
       title="Histogram of Female Student Heights") +
  theme_bw() +
  scale_y_continuous(limits=c(0,20), breaks=seq(0,16,4), expand=c(0,0)) +
  scale_x_continuous(breaks=seq(56,78,2)) +
  theme(panel.grid.major.x=element_blank(), panel.grid.minor.x=element_blank())
