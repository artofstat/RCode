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
###  Example 11 ###
###################

#################################
## Mean, Median, and Outliers  ##
#################################

# Read in CO2 pollution values:
co2 <- c(5.9, 1.8, 0.3, 1.4, 2.1, 0.4, 16.9, 0.8, 11.6)

# To find the Median:
median(co2)

# Create Dotplot:
stripchart(co2, method = 'stack', pch=19, ylim = c(0,3), frame.plot=FALSE, 
           main = 'Dotplot',
           xlab = expression('Per Capita CO'[2]*' Emissions (in metric tons)')) 

# A slightly better dotplot can be obtained with the ggplot2 library.
# To install it, type install.packages(ggplot2)
library(ggplot2)
ggplot(data.frame(co2), aes(x = co2)) + 
  geom_dotplot(binwidth = 0.1, dotsize = 4) +
  labs(x = expression('Per Capita CO'[2]*' Emissions (in metric tons)'), 
       title = 'Dotplot', subtitle = expression('CO'[2]*' Pollution')) +
  theme_classic() +
  theme(axis.line.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        axis.title.y=element_blank()
        )
  