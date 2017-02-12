# Nehemya McCarter-Ribakoff
# Dr. He
# HW 1
# 14 February 2017

# 8)
  # a) import data
college = read.csv(file = "~/Downloads/College.csv", header = TRUE, sep = ",")

  # b) print csv table
fix(college)
  # remove uni names from list
rownames(college) = college[,1]
fix(college)
  # isolate college names (sets as private)
college = college[,-1]
  #let's look again
fix(college)
  # c)
    # i) use summary() to produce numerical summary of dataset
summary(college)
    # ii) use pairs() to produce a scatterplot matrix
pairs(college)        # references whole set
pairs(college[,1:10]) # references first 10 columns

    # iii) Use plot() to produce side-by-side boxplots
    #      of OutState vs Private
OutState = college[,8]
plot(OutState, college[,1])
    # Note: The book asked for a boxplot with plot(). 
    #       I think it may want the following:
boxplot(OutState, college[,1])
    # iv) Create qualitative variable Elite by binning Top10perc
Elite = rep("No",nrow(college))
Elite[college$Top10perc>50]="Yes"
Elite=as.factor(Elite)
college=data.frame(college,Elite)
    # summary() to see how many elite universities there are
summary(Elite)
    # plot() for side-by-side boxplots of OutState vs Elite
plot(OutState, Elite)
    # Note: Once again, I am unsure if by boxplots they mean this:
boxplot(OutState, Elite)
#  v) Use hist() to produce some histograms
# assigning names to columns
appsCount = college[,2]
acceptCount = college[,3]
enrollCount = college[,4]
phdCount = college[,13]
# output format
par(mfrow=c(1,1))
# some histograms
hist(OutState)
hist(appsCount)
hist(acceptCount)

# 10)
  # a) load data
library(MASS)
Boston
# info on set
?Boston
# How many rows? How many columns? What do they represent? 

# 506 rows, 14 columns. Columns represent crime rate, proportional land zoned,
# proportional non-retail business acres per town, Charles river tract,
# ntriogen oxides concentration, avg rooms per dwelling, proportion of
# owner-occupied units built prior to 1940, weighted mean of distances to
# five Boston employment centres, index of accessibility to radial highways,
# full-value property-tax rate, pupil-teacher ration by town, proportaion of
# blacks by town, percent lower status of the population, and median value of
# owner-occupied homes. Rows represent distinct suburbs.

# b) Make some pairwise scatterplots of the predictors (columns) in this data
# set. Describe your findings.

# for convenience
crime = Boston[,1]            # per capita crime rate by town
bigHouseZones = Boston[,2]    # proportion of residential land zoned for lots
                              # over 25,000 sq.ft
propIndus = Boston[,3]        # proportion of non-retail business acres per town
chas = Boston[,4]             # 1 if tract bounds Charles River, 0 o.w.
nox = Boston[,5]              # nitrogen oxides concentration(parts per 10 million)
rmsPerDwelling = Boston[,6]   # average number of rooms per dwelling
oldHomes = Boston[,7]         # proportion of owner-occupied units built pre-1940
distToWorkCenter = Boston[,8] # weighted mean of distance to 5 employment centers
radHighways = Boston[,9]      # index of accessibility to radial highways
tax = Boston[,10]             # full-value property-tax rate per \$10,000
pupilsPerTeacher = Boston[,11]# pupil-teacher ratio by town
blackFolks = Boston[,12]      # 1000(BF - 0.63) ^ 2
                              # where BF is the proportion of black folks by town
lstat = Boston[,13]           # lower status of the population (percent)
medv = Boston[,14]            # median value of owner-occupied homes in \$1000s
pairs(Boston[,3:4])

# c) Are any of the predictors associated with per capita crime rate? If so,
# describe the realtionship

# d) Do any of the suburbs of Boston appear to have particularly high crime rates?
# Tax rates? Pupil-teacher ratios? Comment on the range of each predictor

# e) How many of the suburbs in this data set bound the Charles river?

# f) What is the median pupil-teacher ratio among the towns in this data set?

# g) Which suburb of Boston has lowest median value of owner-occupied homes?
# What are the values of the other predictors for that suburb, and how do those
# values compare to the overall ranges for those predictors? Comment on your
# findings.

# h) How many of the suburbs average more than seven rooms per dwelling?
# More than eight rooms per dwelling? Comment on the suburbs that average more
# than eight rooms per dwelling