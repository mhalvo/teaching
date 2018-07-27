###############################
# Intro to data analysis in R #
###############################
# Max Halvorson               #
#  7/20/18                    #
###############################

##########################
# Let's look at our data #
##########################

### Now let's read a data file from the internet and assign it the name d
dnba <- as.data.frame(read.csv("https://raw.githubusercontent.com/mhalvo/teaching/master/sec2data.csv",header=T))

### Select/show me my data frame
dnba
# for ease, let's call Wingspan x and Nseasons y.
x <- dnba$Wingspan
y <- dnba$Nseasons


######################################
# How would we get to a correlation? #
######################################

### "By hand" - see if you can fill in the blanks below to calculate r
xminusxbar <- x - mean(x)
yminusybar <- y - mean(y)

xminusxbarsq <- 
yminusybarsq <- 
  
xminusxbaryminusybar <- 
    
sx <-
sy <- 

r <-

cor(dnba$Wingspan, dnba$Nseasons)

##############################
# And let's make some graphs #
##############################

### Create histogram
plot(x=dnba$Wingspan, y=dnba$Nseasons)
