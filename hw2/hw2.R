library(ISLR)
Carseats
lm.fit = lm(Carseats$Sales~Carseats$Price+Carseats$Urban+Carseats$US)
lm.fit
x = rnorm(100, mean = 0, sd = 1)
eps = rnorm(100, mean = 0, sd = sqrt(0.25))
(20 * 4.0) + (110 * 0.07)
confint(lm.fit)
summary(lm.fit)
lm.smallFit = lm(Carseats$Sales~Carseats$Price + Carseats$US)
summary(lm.fit)
summary(lm.smallFit)
summary(lm.fit)$sigma #RSE fit
summary(lm.smallFit)$sigma #RSE smallFit
summary(lm.fit)$r.sq #R^2 fit
summary(lm.smallFit)$r.sq #R^2 smallFit
confint(lm.fit, level = 0.95)
plot(predict(lm.smallFit), rstudent(lm.smallFit))
