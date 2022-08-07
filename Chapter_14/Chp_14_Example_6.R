############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 14  ###
###  Example 6   ###
####################

##################
## Tukey Method ##
##################

# Reading in data
gss <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter14/gss_1998_happy_numfriends.csv')
head(gss)

# To convert the data into long format, you can use the `pivot_longer()` function from the tidyverse library
library(tidyverse)
gss <- 
  gss %>% 
  rename_at(2:4, ~ c('very_happy', 'pretty_happy', 'not_too_happy')) %>% 
  pivot_longer(2:4, names_to = 'Happiness', values_to = 'Count') %>% 
  uncount(Count) %>% 
  relocate(Happiness)
attach(gss)
tapply(NumFriends, Happiness, summary)

# To perform a Tukey test
myAnova <- aov(NumFriends ~ Happiness)
tukeyTest <- TukeyHSD(myAnova)
tukeyTest

      