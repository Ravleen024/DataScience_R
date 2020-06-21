
install.packages("faraway")
library(faraway)
data("divusa")
head(divusa)
mydata<-data.frame(divusa[,-1])
head(mydata)

cor(mydata)   # too many decimals

round(cor(mydata),2)  # round to two decimal points
mymodel<-lm(divorce~.,mydata)
mymodel
summary(mymodel)

#check multicollinearity
vif(mymodel)
#no problem of multicollinearity


#another example

Cars<-read.csv("E:\\Data Science\\ExcelR institute  Bangalore\\R\\Datasets\\Cars.csv")
install.packages("car")
library(car)
#mileage<-Cars
#Scatter Plot Matrix:
mileage<-Cars
pairs(mileage)

#Correlation Matrix
cor(mileage)

#Regression Model and Summary
model.car<-lm(MPG~.,data = mileage)
summary(model.car)
#Multi-colinearity
#Variance Inflation Factor
car::vif(model.car)
#stepAIC to find out variable that removes multicollinearity
install.packages("MASS")
library(MASS)
stepAIC(model.car)
#Diagnostic Plots:
#Residual Plots, QQ-Plos, Std. Residuals vs Fitted
plot(model.car) 
#Residuals vs Regressors
residualPlots(model.car)
#Added Variable Plots
avPlots(model.car)
#QQ plots of studentized residuals
qqPlot(model.car)
#Deletion Diagnostics
influenceIndexPlot(model.car) # Index Plots of the influence measures

####Iteration 1 
#Remove 77th observation
mileage["HP2"] <-mileage$HP*mileage$HP
mileage["SP2"] <-mileage$SP*mileage$SP
mileage1<-mileage[-77,]
model1<-lm(MPG~.,data = mileage1)
summary(model1)

plot(model1) 
residualPlots(model1)
qqPlot(model1)
influenceIndexPlot(model1)

vif(model1)
#iteration2
mileage2<-mileage[-c(77,66,81,79),]

model2<-lm(MPG~.,data = mileage2[,-c(5,4)])
summary(model2)
influenceIndexPlot(model2)

