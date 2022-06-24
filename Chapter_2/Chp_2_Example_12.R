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
###  Example 12 ###
###################

#########################
## Standard Deviation  ##
#########################

# Read in values:
men <- c(0, 0, 0, 2, 4, 4, 4)
women <- c(0, 2, 2, 2, 2, 2, 4)

# Dotplot for values for men
library(ggplot2)
ggplot(data.frame(men), aes(x = men)) + 
  geom_dotplot() +
  labs(x = '',
       title = 'Dotplot', subtitle = 'Men') +
  theme_classic() +
  theme(axis.line.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        axis.title.y=element_blank()
  )

# Dotplot for values for women
ggplot(data.frame(women), aes(x = women)) + 
  geom_dotplot() +
  labs(x = '',
       title = 'Dotplot', subtitle = 'Women') +
  theme_classic() +
  theme(axis.line.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        axis.title.y=element_blank()
  )

# To find the Standard Deviation
sd(men)
sd(women)

