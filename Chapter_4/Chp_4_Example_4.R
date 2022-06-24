#############################################################
## R code to reproduce statistical analysis in the textbook:
## Agresti, Franklin, Klingenberg
## Statistics: The Art & Science of Learning from Data
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 4  ###
###  Example 4  ###
###################

#############################
##   Simple Random Sample  ##
#############################

# To draw a sample of size 2 from 60 raffle tickets
sample(60, 2)

# To obtain all the combinations of drawing samples of size m from n objects
# combn(n, m)

# To obtain the number of all combinations of drawing 
# samples of size 2 from 60 raffle tickets
ncol(combn(60, 2))

