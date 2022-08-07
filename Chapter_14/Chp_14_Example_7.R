############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

####################
###  Chapter 14  ###
###  Example 7   ###
####################

#########################
## Regression Analysis ##
#########################

# Reading in data
y <- c(5, 1, 11, 2, 8, 0, 1, 4, 6, 3, 13, 9, 8, 15, 7)
group <- rep(c('A', 'M', 'C'), times = c(5, 5, 5))

# Fitting in regression model with advertisements as the baseline
linReg <- lm(y ~ group)
summary(linReg)

# To obtain ANOVA table
anova(linReg)

# Note that R sets up the reference category alphabetically, so the baseline here is advertisements
# You can change the reference category by using the `relevel()` function
group <- relevel(as.factor(group), ref = 'C')

# Fitting in regression model with classical as the baseline
linReg <- lm(y ~ group)
summary(linReg)

# You can verify that the ANOVA table output should be the same regardless of which reference category is used
anova(linReg)
