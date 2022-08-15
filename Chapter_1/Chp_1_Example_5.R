#############################################################
## R code to accompany the textbook
## Statistics: The Art & Science of Learning from Data
## by A. Agresti, C. Franklin and B. Klingenberg
## 5th Edition, Pearson 2021
## Web: ArtofStat.com
## Copyright: Bernhard Klingenberg
############################################################

###################
###  Chapter 1  ###
###  Example 5  ###
###################

#########################################################
## Loading a .csv data file from your harddrive into R ##
#########################################################

# Create the data file as shown in Example 5 with Excel
# Save the file as a .csv file and name it "GoogleAnalyticsExample5.csv"

# Now, select this .csv file from your hard drive:
mypath <- file.choose()

# Now R knows the location of your file:
mypath

# The read.csv() command reads in .csv files:
dataEx5 <- read.csv(mypath)

# We can now view the file:
dataEx5

################################################
## Loading a .csv data file from the internet ##
################################################

# Create the data file as shown in Example 5 with Excel
# Save the file in some cloud-based service on the internet
# I saved it on Gitub (see www.github.com)

# If you have a .csv file sitting on the internet, and you know its url (web address), you can grab it from there.

# For instance, the GoogleAnalytics file sits at the following address, which I enter into R:
myurl <- 'https://raw.githubusercontent.com/artofstat/data/master/Chapter1/GoogleAnalyticsExample5.csv'

# I can now load the data into R as before, using read.csv():
dataEx5.remote <- read.csv(myurl)
dataEx5.remote
