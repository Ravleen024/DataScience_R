library(datasets)
data()
data(HairEyeColor)
View(HairEyeColor)
summary(HairEyeColor)
plot(HairEyeColor)
dev.off()    # to clear plots
plot(iris)
plot(Nile)
summary(HairEyeColor)
summary(iris)
dev.off()
head(HairEyeColor)
head(iris)
head(mtcars)
head(HairEyeColor)

cat("\014")   #clear console

install.packages("pacman")
require(pacman)
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, 
               lubridate, plotly, rio, rmarkdown, shiny, stringr,tidyr)
library(datasets)
head(iris)
View(iris)
plot(iris$Species)
plot(iris$Sepal.Length)
plot(iris$Species,iris$Sepal.Length)
plot(iris$Petal.Length,iris$Petal.Width)
plot(iris)
plot(iris$Petal.Length,iris$Petal.Width,
     col="#ff0000", #hex color code red
     pch= 19, #use solid circles for points ,pch means plot character
     main="Iris: Petal.Length vs Petal Width",
     xlab="Petal.Length",  # x axis label
     ylab="Petal.Width")


apple=c(1,2,3,4,5)
banana=c(5,4,3,2,1)
watermelon=c(4,5,6,7,8)
boxplot(apple, banana, watermelon)  #without axis name
boxplot(apple, banana, watermelon, names=c("apple","banana","watermelon"))



plot(x = c(0, 4.5),
     y = c(0, 5),
     main = "pch arguments",
     xaxt = "n",
     yaxt = "n",
     xlab = "",
     ylab = "",
     cex.main = 2.5, 
     col = "white"
)
y = rep(5:0, each=5)
for (i in 0:25) { 
  points(x = i %% 5, y = y[i+1], pch = i,cex = 2, col="blue", bg="red")
  text(0.3 + i %% 5, y = y[i+1], i, cex = 2)
}


dev.off()


plot(cos,0,2*pi)
plot(exp,1,5)
plot(dnorm,-3,+3)

plot(dnorm,-3,+3,
     lwd=7,  #line width
     col="#cc0000",
     main="Standard normal distribution",
     xlab="Z-scores",
     ylab="Density"
     )
