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
###  Example 2  ###
###################

########################################################
##   Categorical Explanatory  and Response Variables  ##
########################################################

# Reading in the data:
counts <- c(29, 98, 19485, 7086)
pesticide <- matrix(counts, nrow=2, ncol=2, byrow=TRUE, 
                  dimnames=list('Food Type' = c('Organic', 'Conventional'), 
                                'Pesticides'= c('Present', 'Absent')))

# Adding row and column totals
addmargins(pesticide)

# To find the conditional proportions for pesticide status (i.e. row proportions)
pesticideRowProportions <- prop.table(pesticide, 1)

# Rounding off for easier readability
round(pesticideRowProportions, 3) 



