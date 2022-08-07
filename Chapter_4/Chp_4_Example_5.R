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
###  Example 5  ###
###################

#########################################
##   Selecting a Simple Random Sample  ##
#########################################

# To draw a sample of size 10 accounts from 67 accounts (without replacement)
sample(67, 10)

# Note that `replace = FALSE` is a default argument in the `sample()` function
# To draw with replacement, you can set `replace = TRUE`
sample(67, 10, replace = TRUE) 