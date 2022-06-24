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
###  Example 16 ###
###################

####################
## The Box Plot  ##
####################

# Read in Sodium values:
sodium <- c(0, 340, 70, 140, 200, 180, 210, 150, 100, 130, 140, 180, 190, 160,290, 50, 220, 180, 200, 210)

# Basic Box Plot
boxplot(sodium, horizontal = TRUE, main = 'Cereal Sodium Data', xlab = 'Sodium (mg)')

# A better-looking box plot can be obtained with the ggplot2 library
# To install it, type install.packages('ggplot2')
library(ggplot2)
ggplot(data.frame(sodium), aes(x='', y=sodium)) + 
  geom_boxplot(width = 0.3, fill = 'tan') +
  coord_flip() +
  labs(x = '', y = 'Sodium (mg)',  
       title = 'Box Plot of Cereal Sodium Data') +
  theme_classic() + 
  scale_y_continuous(limits = c(-20,420), 
                     breaks = seq(0,400,50), 
                     expand = c(0,0)) + 
  theme(axis.line.y = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank(),
        axis.title.y = element_blank()
        )

