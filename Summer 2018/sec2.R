###############################
# Intro to data analysis in R #
###############################
# Max Halvorson               #
#   8/2/18                    #
####$##########################

##########################
# Let's look at our data #
##########################

### Now let's read a data file from the internet and assign it the name d
dcats <- as.data.frame(read.csv("https://raw.githubusercontent.com/mhalvo/teaching/master/sec3data.csv",header=T))

### Select/show me my data frame
dnba

# for ease, let's call Wingspan x and Nseasons y.
x <- dnba$Wingspan
y <- dnba$Nseasons


