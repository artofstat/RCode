#############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 7  ###
###  Example 6  ###
###################

#################################################################
## Sampling Distribution of the Sample Correlation Coefficient ##
#################################################################

# Reading in the data:
sandwiches <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter7/carbon_footprint_sandwich.csv')
attach(sandwiches) # so we can refer to variable names

# To compute the correlation coefficient between carbon footprint and energy content
cor(EnergyContent..kCal., Carbon.footprint..g.CO2.eq..)

# To obtain a bootstrap sample of the sandwiches
sample(Sandwich, replace = TRUE)

# To obtain a bootstrap sample of the rows of the dataframe
sandwiches[sample(seq_len(nrow(sandwiches)), replace = TRUE), ]

# To generate 10,011 bootstrap samples and find the correlation
bootcorr <- c() # initializing
for (i in  1:10011) {
  bootsample <- sandwiches[sample(seq_len(nrow(sandwiches)), 
                                  replace = TRUE), ]
  bootcorr[i] <- cor(bootsample$EnergyContent..kCal., 
                     bootsample$Carbon.footprint..g.CO2.eq..)
}

# To obtain summary of the correlation coefficients from the bootstrap samples
summary(bootcorr)
sd(bootcorr)
