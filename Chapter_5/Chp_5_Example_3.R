#############################################################
## R code to reproduce statistical analysis in the textbook:
## Agresti, Franklin, Klingenberg
## Statistics: The Art & Science of Learning from Data
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 5  ###
###  Example 3  ###
###################

#####################
##   Sample Space  ##
#####################

# To view the sample space for all possible outcomes of this quiz
sampleSpace <- expand.grid(Q1 = c('C', 'I'), Q2 = c('C', 'I'), Q3 = c('C', 'I'))
sampleSpace 
