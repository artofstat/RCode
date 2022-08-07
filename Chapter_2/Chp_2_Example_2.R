#############################################################
## R code to reproduce statistical analysis in the textbook:
## Agresti, Franklin, Klingenberg
## Statistics: The Art & Science of Learning from Data
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 2  ###
###  Example 2  ###
###################

#####################
## Displaying Data ##
#####################

# Create dataset:
region <- c('Florida', 'Hawaii', 'South Carolina', 'California', 'North Carolina', 'Australia', 'South Africa', 'Reunion Island', 'Brazil', 'Bahamas', 'Other')
frequency <- c(203, 51, 34, 33, 23, 125, 43, 17, 16, 6, 138)
attacks <- data.frame(region, frequency)
# Display the entire dataset:
attacks
# Display only the first 6 lines:
head(attacks,6)

# Or, you can read in the dataset via: 
# > path <- 'https://raw.githubusercontent.com/artofstat/data/master/Chapter2/sharks.csv'
# > Attacks <- read.csv(path)

# Create column for the proportion in the dataframe:
attacks$proportion <- attacks$frequency/sum(attacks$frequency)
head(attacks,6)

# Create column for the percentage:
attacks$percentage <- 100*(attacks$frequency/sum(attacks$frequency))
head(attacks,6)

# For nicer printing in R, use dplyr package and declare data frame as a table, using function as_tibble().
# To install dplyr package, use install.packages('dplyr').
# Then, load package into R using library():
library(dplyr)
attacks <- as_tibble(attacks)
attacks
