#############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 8  ###
###  Example 12 ###
###################

######################################
## Confidence Interval for a Median ##
######################################

# Reading in the data
delays <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter7/atl_departure_delay.csv')

# To make 10,000 bootstrap samples and compute median of each sample
bootmedian <- c()
for (i in 1:10000) {
  bootmedian[i] <- median(sample(delays$minutes, replace = TRUE))
}

# To obtain the 2.5th and 97.5th percentiles of the bootstrapped medians
quantile(bootmedian, c(0.025, 0.975))
