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
Region <- c('Florida', 'Hawaii', 'South Carolina', 'California', 'North Carolina', 'Australia', 'South Africa', 'Reunion Island', 'Brazil', 'Bahamas', 'Other')
Frequency <- c(203, 51, 34, 33, 23, 125, 43, 17, 16, 6, 138)
Attacks <- data.frame(Region, Frequency)
# Display the entire dataset:
Attacks
# Display only the first 6 lines:
head(Attacks,6)

# Or, you can read in the dataset via: 
# > path <- 'https://raw.githubusercontent.com/artofstat/data/master/Chapter2/sharks.csv'
# > Attacks <- read.csv(path)

# Create column for the proportion in the dataframe:
Attacks$Proportion <- Attacks$Frequency/sum(Attacks$Frequency)
head(Attacks,6)

# Create column for the percentage:
Attacks$Percentage <- 100*(Attacks$Frequency/sum(Attacks$Frequency))
head(Attacks,6)

# For nicer printing in R, use dplyr package and declare data frame as a table, using function as_tibble().
# To install dplyr package, use install.packages('dplyr').
# Then, load package into R using library():
library(dplyr)
Attacks <- as_tibble(Attacks)
Attacks
