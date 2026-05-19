library(plot3D)
attach(mtcars)

plot(hp,mpg,pch=20)

hist(hp,col='red')
hist(mpg,col='blue')

hp_c = cut(hp,6)

hp_c
hp
table(hp_c)

mpg_c = cut(mpg,6)
table(mpg_c)

tabl = table(hp_c,mpg_c)

# Plot 3D histogram

hist3D(z=tabl, xlab = "Horse Power",
       ylab = "mpg",
       zlab = "Frequency",
       phi=30)

plot(hp,mpg)
