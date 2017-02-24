library(ISLR)
Carseats
lm.fit = lm(Carseats$Sales~Carseats$Price+Carseats$Urban+Carseats$US)
lm.fit
