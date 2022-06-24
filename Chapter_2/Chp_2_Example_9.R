#############################################################
## R code to reproduce statistical analysis in the textbook:
## Agresti, Franklin, Klingenberg
## Statistics: The Art & Science of Learning from Data
## 4th Edition, Pearson 2017
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 2  ###
###  Example 9  ###
###################

######################
## Time Trend Plot  ##
######################

# Read in dataset (using updated version):
temps <- read.csv('http://www.artofstats.com/data/chapter2/central_park_yearly_temps_upto2017.csv')
attach(temps) # so we can refer to variable names

# Basic Time Plot:
plot(x = YEAR, y = ANNUAL, type = 'l',  
     main='Annual Average Temperature \n in Central Park (1869-2017)',
     ylab='Average Temperature')

# Include Points:
plot(x = YEAR, y = ANNUAL, type = 'o', pch=19,
     main='Annual Average Temperature \n in Central Park (1869-2017)', 
     ylab='Average Temperature')

# Include Smooth Trend Line:
scatter.smooth(x = YEAR, y = ANNUAL, type = 'o', pch=19, lpars=list(col='red', lwd=2), 
               main='Annual Average Temperature \n in Central Park (1869-2017)',
               ylab='Average Temperature')

# For more fine tuning, it is better to use the ggplot2 library.
# If you haven't installed it already, first type: install.packages(ggplot2)
library(ggplot2)
ggplot(data = temps, aes(x = YEAR, y = ANNUAL)) + 
  geom_point(color = 'blue') + 
  geom_line() + 
  geom_smooth(col = 'red', fill = 'orange') +
  labs(title = 'Annual Average Temperature \n in Central Park (1869-2017)',
       y = 'Average Temperature') +
  scale_x_continuous(breaks = seq(min(YEAR), max(YEAR), 10)) +
  theme_bw() +
  theme(panel.grid.minor.x = element_blank())

