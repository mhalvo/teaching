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
dcats

# for ease, let's call cat_weight x
x <- dcats$cat_weight

# here are the population values that we know...
mu_x <- 8.9
sigma_x <- 3.5

# let's calculate z
xbar <-
n <-
sigma_xbar <-
  
z <- (xbar - mu_x) / sigma_xbar
onetailp <- 1-pnorm(z) ## right side of z
twotailp <- onetailp*2 ## two-tailed p-value
