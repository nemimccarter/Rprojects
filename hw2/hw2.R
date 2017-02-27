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
x = rnorm(100, mean = 0, sd = 1)
eps = rnorm(100, mean = 0, sd = sqrt(0.25))
Y = -1 + (0.5 * x) + eps
Y
length(Y)
plot(x, Y)
ls.fit = lm(Y~x)
lm.fit = lm(x)
abline(ls.fit, col = 3)
abline(-1, 0.5, col = 4)
legend(0.6,-1.5, legend = c("least squares", "pop. regression"), col=3:4, lwd = 3)
lm.fit = lm(Y~x + x^2)
lm.fit
plot(x, Y)
abline(lm.fit)
summary(lm.fit)
lm.fit = lm(Y~x + x^2)
summary(lm.fit)$r.sq #R^2 fit
x = rnorm(100, mean = 0, sd = (1 / 10))
eps = rnorm(100, mean = 0, sd = sqrt(0.25 / 10))
Y = -1 + (0.5 * x) + eps
# (d) create a scatterplot, comment on observations
plot(x, Y)
