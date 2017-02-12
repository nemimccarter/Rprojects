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
plot(college$Private, college$Outstate)
    # iv) Create qualitative variable Elite by binning Top10perc
Elite = rep("No",nrow(college))
Elite[college$Top10perc>50]="Yes"
Elite=as.factor(Elite)
college=data.frame(college,Elite)
    # summary() to see how many elite universities there are
summary(Elite)
    # plot() for side-by-side boxplots of OutState vs Elite
plot(college$Elite, college$Outstate)

#  v) Use hist() to produce some histograms

# output format
par(mfrow=c(1,1))
# some histograms
hist(college$Outstate)
hist(college$Apps)
hist(college$Accept)
hist(college$Enroll)
hist(college$PhD)
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

pairs(~Boston$crim+Boston$tax)
boxplot(crime)
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