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
###  Example 4  ###
###################

##############
## Dotplots ##
##############

# Read in Sodium values:
sodium <- c(0, 340, 70, 140, 200, 180, 210, 150, 100, 130, 140, 180, 190, 160,290, 50, 220, 180, 200, 210)

# Create Dotplot:
stripchart(sodium, method = 'stack', pch=19, ylim=c(0,3), frame.plot=FALSE,  
           main = 'Dotplot', xlab = 'Sodium Content (mg)')

# You may have to resize the plotting window and then execute the command again for this plot to look nice.
# You may also have to try different values for ylim

# A slightly better dotplot can be obtained with the ggplot2 library.
# To install it, type install.packages('ggplot2')
library(ggplot2)
ggplot(data.frame(sodium), aes(x = sodium)) + 
  geom_dotplot() +
  labs(x = 'Sodium Content (mg)', title = 'Dotplot', 
       subtitle = 'Sodium Content of 20 Breakfast Cereals') +
  theme_classic() +
  theme(axis.line.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        axis.title.y=element_blank()
        )

