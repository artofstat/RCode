#############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 10  ###
###  Example 10  ###
####################

##################################################################
## Bootstrap Distribution of the Difference Between Two Medians ##
##################################################################

# Reading in the data
bankLoans <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter10/bank_loan_amounts_term.csv')

# To generate 10,000 bootstrap samples and find each sample's difference between two means
bootmed_diff <- c() # initializing
for (i in 1:10000) {
  bootsample <- bankLoans[sample(seq_len(nrow(bankLoans)), replace = TRUE), ]
  years5 <- subset(bootsample, term == 5)
  years3 <- subset(bootsample, term == 3)
  bootmed_diff[i] <- median(years5$loan) - median(years3$loan)
}

# To obtain the 95% bootstrap percentile confidence interval for the difference in median loan amounts
quantile(bootmed_diff, c(0.025, 0.975))

