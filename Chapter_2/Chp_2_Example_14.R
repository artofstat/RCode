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
studentHeights <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter2/heights.csv')
attach(studentHeights)

# The original dataset contains height measurements for men and women 
# You can use the `subset()` function to filter out height measurements for men and omit the measurement of 92 inches
heightsWomen <- subset(HEIGHT, GENDER == 'Female' & HEIGHT != 92)

# Sample Size
length(heightsWomen)

# Mean
mean(heightsWomen)

# Standard Deviation
sd(heightsWomen)

# 5 Number Summary
summary(heightsWomen) 

# Basic  Histogram 
hist <- hist(heightsWomen, breaks = 30,
             main = 'Histogram of Female Student Heights',
             xlab = 'Height (in)',
             ylab = 'Percent (%)')

# Creating Histogram using ggplot2
library(ggplot2)
ggplot(data.frame(heightsWomen), 
       aes(x = heightsWomen, 
           y = 100 * (..count.. / sum(..count..)))) + 
  geom_histogram(center = 0, binwidth = 1, color = 'black', fill = 'tan') +
  labs(x = 'Height (in)', y = 'Percent (%)',  
       title = 'Histogram of Female Student Heights') +
  theme_bw() +
  scale_y_continuous(limits = c(0,20), breaks = seq(0,16,4), expand = c(0,0)) +
  scale_x_continuous(breaks = seq(56,78,2)) +
  theme(panel.grid.major.x = element_blank(), 
        panel.grid.minor.x = element_blank()
        )

