attach(mtcars)
mtcars

n = nrow(mtcars)

y = mtcars[,'mpg']
y

predictors_name = c('hp','wt','disp')

x = mtcars[,predictors_name]
Int = rep(1,n)
Int

X = as.matrix(cbind(Int,x))


# Calculate X'X

X_t_x = t(X)%*%X

#Calculate Inverse
inv_X_t_x = solve(X_t_x)

# Calculate beta

beta_hat = inv_X_t_x%*%t(X)%*%y

#### Fit Linear regression model using lm
### mpg = b0 + b1*hp + b2*wt + b3*disp + e

fit = lm(mpg~hp+wt+disp,data = mtcars)

cbind(coef(fit),beta_hat)

?lm

#############################

plot(mtcars$hp,mtcars$mpg, pch=20,xlab = "Horse Power", ylab = "Miles per Gallon")

abline(lm(mpg~hp,data = mtcars),col="red",lwd = 3,lty=1)

grid(col = "grey")

#########################################

head(mtcars) 

# How to handle categorical variable

mtcars$cyl = as.factor(mtcars$cyl)

fit2 = lm(mpg~cyl,data=mtcars)
