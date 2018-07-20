###############################
# Intro to data analysis in R #
###############################
# Max Halvorson               #
#  7/20/18                    #
###############################

### Writing after a pound sign (it wasn't always a hashtag!) is a comment, meaning this code won't be run.
# It's a way to tell yourself/other people what you're doing. ###

##############################
# Here's some basic R coding #
##############################

# R is a calculator
1+2
2^2
sqrt(2)

# R has functions like Excel!
mean(c(1,2))
max(c(1,2)) # notice that I put my data in the c() function - R puts variables into a list of numbers called a vector


##############################
# Now let's look at our data #
##############################

### Now let's read a data file from the internet and assign it the name d
d <- as.data.frame(read.csv("https://raw.githubusercontent.com/mhalvo/teaching/master/sec1data.csv",header=T))

### Select/show me my data frame
d

### Select/show me my variable
d$sleep_hours
mean(d$sleep_hours)
max(d$sleep_hours)

### Can I get a frequency table?
ftable(d$sleep_hours) # sort of
freqdist <- data.frame(f=c(3,6,9,2),
                             lims=c("4-5","6-7","8-9","10-11")) # let's make our own


##############################
# And let's make some graphs #
##############################

### Create histogram
hist(d$sleep_hours, breaks=c(3.5,4.5,5.5,6.5,7.5,8.5,9.5,10.5))
hist(d$sleep_hours, breaks=c(3.5,5.5,7.5,9.5,11.5))

### Frequency polygon
plot(freqdist$f, type="b")

### And a pie chart, so we can say we did (again, pie charts are useful...if you're cutting a pizza)
pie(freqdist$f, labels=freqdist$lims)
