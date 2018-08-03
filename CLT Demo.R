### Setup; can ignore ###

par(mfrow=c(1,1), ask=TRUE)
means <- c()
set.seed(1337)

### Set parameters
nsamples <- 1000
sampsize <- 50


### Let's look at one sample (n=50) at a time
for(i in 1:5) {
  samp <- rnorm(sampsize, 0, 1)
  hist(samp)
  lines(x=mean(samp))
  print(mean(samp))
}

### Now let's plot the means of 20 samples (n=50 per sample) at a time
means <- c()
for (i in 1:nsamples) {
  means[i] <- mean(rnorm(sampsize,0,1))
  if (i %% 20 == 0) {
    hist(means, breaks=c(seq(-3, 3, .05)))
  }
}

### Notice the sd of the sampling distribution is much smaller than the sd of the population
sd(samp)
sd(samp)/sqrt(sampsize)
sd(means)

### Now let's do the same thing for a uniform distribution
means <- c()
for(i in 1:5) {
  hist(runif(sampsize,0,1))
}
for (i in 1:nsamples) {
  means[i] <- mean(rnorm(sampsize,0,1))
  if (i %% 20 == 0) {
    hist(means, breaks=c(seq(-3, 3, .05)))
  }
}
