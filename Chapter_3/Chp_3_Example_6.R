#############################################################
## R code to reproduce statistical analysis in the textbook:
## Agresti, Franklin, Klingenberg
## Statistics: The Art & Science of Learning from Data
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 3  ###
###  Example 6  ###
###################

#####################
##   Scatterplots  ##
#####################

# Reading in the data:
internet <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter3/InternetUse.csv')
colnames(internet) # To view the names of the variables in the dataset
attach(internet) # so we can refer to variable names


# Basic scatterplot
plot(x = Internet.Penetration, y = Facebook.Penetration, pch = 16, col = 'darkred',
     main = 'Internet and Facebook Use for 32 Countries',
     xlab = 'Internet Use (%)', ylab = 'Facebook Use (%)')

# Creating scatterplot through ggplot2
library(ggplot2)
ggplot(internet, aes(x = Internet.Penetration, y = Facebook.Penetration)) + 
  geom_point(aes(color = 'darkred'), show.legend = FALSE) +
  labs(title='Internet and Facebook Use for 32 Countries',
       x = 'Internet Use (%)', y= 'Facebook Use (%)') +
  theme_classic() +
  scale_y_continuous(limits = c(-5,65), 
                     breaks = seq(0,60,10), 
                     expand = c(0,0)) +
  scale_x_continuous(limits = c(-5,105), 
                     breaks = seq(0,100,10))

  
  