#############################################################
## R code to reproduce statistical analysis in the textbook:
## Agresti, Franklin, Klingenberg
## Statistics: The Art & Science of Learning from Data
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 3   ###
###  Example 14  ###
####################

#############################
##   Influential Outliers  ##
#############################

# Reading in the data
crime <- read.csv(file='https://raw.githubusercontent.com/artofstat/data/master/Chapter3/us_statewide_crime.csv')
attach(crime) # so we can refer to variable names

# Basic scatterplot
plot(x = college, y = murder.rate, pch = 16, col = 'darkred',
     main = 'Murder Rates and College Education for 50 U.S. States with DC',
     xlab = 'Percent with College Degree (%)', 
     ylab = 'Murder Rate (per 100,000)')

# Fitting in regression model
lin.reg <- lm(murder.rate ~ college)
abline(lin.reg, col = 'blue')
lin.reg
detach(crime)


# Excluding the observation for DC
crime <- subset(crime, State != 'District of Columbia')


# Fitting in new regression model 
attach(crime)
lin.reg <- lm(murder.rate ~ college)
plot(x = college, y = murder.rate, pch = 16, col = 'darkred',
     main = 'Murder Rates and College Education for 50 U.S. States with DC',
     xlab = 'Percent with College Degree (%)', 
     ylab = 'Murder Rate (per 100,000)')
abline(lin.reg, col = 'blue')
lin.reg

