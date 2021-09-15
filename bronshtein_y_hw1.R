#Question 1
#(1)Create a column of y that includes 100 random sample from a normal
#distribution with mean=10 and sd=1
set.seed(1)
y <- matrix(rnorm(n=100,mean=10, sd=1))
#(2) Create a column of x that includes numbers 1 to 100
x <- matrix(1:100)
#(3) Draw a scatterplot using R. Based on the figure, do you think
#x and y are correlated?
plot(x,y)


corr <- cor(x,y)
corr
#Based on the plot and the result of cor(), I do not believe that x and y are
#correlated. The value is -0.01456896 which is very close to 0


#(4) Fit a regression model y = B_0 + B_1 * x + epsilon
#and obtain the R^2 value.
lm_model <- lm(formula=y~x)
summary <- summary(lm_model)
r_sq <- summary$r.squared
r_sq
