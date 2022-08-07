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
###  Example 3  ###
###################

#########################################
##   Graphing Conditional Proportions  ##
#########################################

# Reading in the data:
counts <- c(29, 98, 19485, 7086)
pesticide <- matrix(counts, nrow = 2 , ncol = 2, byrow = TRUE, 
                    dimnames = list('Food Type' = c('Organic', 'Conventional'), 
                                    'Pesticides'= c('Present', 'Absent')))

# To find the conditional proportions for pesticide status
condProps <- prop.table(pesticide, 1)

# Bar graph of conditional proportions on pesticide status for organic foods
barplot(condProps[1,], xlab='Pesticide', ylab='Proportion', ylim=c(0,1), 
        main = 'Organic Foods', 
        col = c('green4', 'darkseagreen'))

# Bar graph of conditional proportions on pesticide status for conventionally foods
barplot(condProps[2,], xlab='Food Type', ylab='Proportion', ylim=c(0,1), 
        main = 'Conventionally Grown Foods', 
        col = c('orange2', 'antiquewhite2'))

# Bar graph of proportion of food samples with pesticide present
barplot(condProps[,1], xlab = 'Food Type', ylab = 'Proportion', ylim = c(0,1), 
        main = 'Proportion of Food samples \n with Pesticide Present', 
        col = c('green4', 'orange2'))




