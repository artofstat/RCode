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
Men <- c(0, 0, 0, 2, 4, 4, 4)
Women <- c(0, 2, 2, 2, 2, 2, 4)

# Dotplot for values for men
library(ggplot2)
ggplot(data.frame(Men), aes(x=Men)) + 
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
library(ggplot2)
ggplot(data.frame(Women), aes(x=Women)) + 
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
sd(Men)
sd(Women)

