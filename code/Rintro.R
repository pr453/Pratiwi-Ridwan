

# make sure we are in the right directory
getwd()   # get working directory
setwd("..")   # go up one level
getwd()
setwd("datasets")  # down one level into datasets subdirectory
getwd()
setwd("../code")  # up one and back down into code
getwd()


# reading in data
iaafdata <- read.csv("../datasets/iaaf_testosterone.csv",header=TRUE)


# Everything that exists  in R is an object
# Everything that happens in R is a function call.
# - John Chambers


# see what's in the data object
iaafdata
class(iaafdata)    # "class" of the object
names(iaafdata)    # names of columns of data frame
str(iaafdata)      # more detailed info
head(iaafdata)     # first six rows
dim(iaafdata)      # number of rows and columns
summary(iaafdata)  # statistical summary


# variable types
typeof(TRUE)
typeof(1L)
typeof(1)
typeof(pi)
typeof("I am a string")
typeof("Integer")


# access a column of the data
iaafdata$event       # event variable
iaafdata[2,3]           # second row, third column
iaafdata[2,]           # second row 
iaafdata[ ,2 ]         # second column
iaafdata["result_all"]
iaafdata[1,2]          # first row, second column
iaafdata$event[1]    # first entry of gallons variable


# get a subset of the rows based on one of the variables
iaafdata$units == "seconds"
iaafdata[iaafdata$units == "seconds" , ]

# a different way to get a subset of the data
subset(iaafdata, units == "meters")


# for homework 1, we need to compute probabilities
# R has a number of "named" distributions built in
# the naming convention is the following:

# r<distribution>    simulate from <distribution>
# d<distribution>    evaluate pmf or pdf
# p<distribution>    evaluate cdf
# q<distribution>    evaluate quantile function (inverse cdf)

?Distributions

?rnorm  # documentation
rnorm()
rnorm(7)
# some arguments have no defaults - these are required
# arguments with defaults are not required but can be changed

# these are all the same!
rnorm(n = 7,mean = 3, sd = 2)
rnorm(7,3,2)
rnorm(7, sd = 2, mean = 3)
rnorm(7, 2, mean = 3)
rnorm(n = 7, 3, 2)
rnorm(sd = 2, n = 7, 3) 

pnorm(-1.96)
pnorm(-1.645)

?dbinom
x <- 0:10
p <- dbinom(x,10,1/2)
cbind(x,p)
plot(x,p)
p <- dbinom(x,10,0.1)
plot(x,p)

