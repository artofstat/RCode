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
###  Example 13 ###
###################

#############################################
## Confidence Interval for the Correlation ##
#############################################

# Reading in the data:
sandwiches <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter7/carbon_footprint_sandwich.csv')
attach(sandwiches) # so we can refer to variable names

# To compute the correlation coefficient between carbon footprint and energy content
cor(EnergyContent..kCal., Carbon.footprint..g.CO2.eq..)

# To obtain a bootstrap sample of the sandwiches
sample(Sandwich, replace = TRUE)

# To obtain a bootstrap sample of the rows of the dataframe
sandwiches[sample(seq_len(nrow(sandwiches)), replace = TRUE), ]

# To generate 10,000 bootstrap samples and find the correlation
bootcorr <- c() # initializing
for (i in  1:10000) {
  bootsample <- sandwiches[sample(seq_len(nrow(sandwiches)), replace = TRUE), ]
  bootcorr[i] <- cor(bootsample$EnergyContent..kCal., bootsample$Carbon.footprint..g.CO2.eq..)
}

# To obtain summary of the correlation coefficients from the bootstrap samples
quantile(bootcorr, c(0.025, 0.975))
