library(ISLR)

ls.fit = lm(Y~x)
x = rnorm(100, mean = 0, sd = 1)
eps = rnorm(100, mean = 0, sd = sqrt(0.25 / 10))
Y = -1 + (0.5 * x) + eps
# (d) create a scatterplot, comment on observations
plot(x, Y)
ls.fitLessNoise = lm(Y~x)
summary(ls.fitLessNoise)

x = rnorm(100, mean = 0, sd = 1)
eps = rnorm(100, mean = 0, sd = sqrt(0.25))
lm.fit = lm(Y~x + x^2)
lm.fit = lm(Y~x)
lm.fit
summary(lm.fit)
Residual standard error: 0.5263 on 98 degrees of freedom
Multiple R-squared:  0.000384,	Adjusted R-squared:  -0.009816 
F-statistic: 0.03765 on 1 and 98 DF,  p-value: 0.8465
