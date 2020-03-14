#2.3 Lab

#2.3.1 Basic commands

x <- c(1,3,2,5) #making a vecotr

y = c(1,4,3) #ummmmmmmmm wtf... thanks Jose for telling me this. You can just fucking use equals.

length(x)

length(y)

x + y

ls() #this returns global environment variables

rm(df,pl,pl2) #remove elements from the global environment

rm(list=ls()) #remove everything. This is also easy to do in R Studi by clearing the environment

x = matrix(data=c(1,2,3,4), nrow=2, ncol=2) #2x2, 1,2,3,4

#R sorts matrices by filling columns first by default

x = matrix(c(1,2,3,4),2,2,byrow=TRUE) #sort by rows instead of columns

sqrt(x) #operation on entire matrix

x^2 #operation on entire matrix

x = rnorm(50) #standard normal variables, sd=1, mean=0
y = x + rnorm(50,mean=50,sd=.1) #altered mean and sd
cor(x,y) #correlation between sets

set.seed(1303) #pre-generated random number sequence
rnorm(50)

set.seed(3)
y=rnorm(100)
mean(y) #mean of distribution
var(y) #variance of distribution
sqrt(var(y))
sd(y)

#2.3.2 Graphics

x=rnorm(100)
y=rnorm(100)
plot(x,y)
plot(x,y,xlab='this is the x-axis',ylab='this is the y-axis',
     main='Plot of X vs Y')

pdf('Figure.pdf') #Figure PDF, we can use jpeg() too
plot(x,y,col='green') #green
dev.off() #close the graph

x=seq(1,10)
x
x=seq(-pi,pi,length=50) #50 evenly spaced entries between -pi and pi
x

y=x
f=outer(x,y,function(x,y)cos(y)/(1+x^2))
contour(x,y,f)
contour(x,y,f,nlevels=45,add=T)
fa=(f-t(f))/2
contour(x,y,fa,nlevels=15) #these are various contour plots which represent 3-dimensional data

image(x,y,fa) #heatmap
persp(x,y,fa) #3d plot
persp(x,y,fa,theta=30)
persp(x,y,fa,theta=30,phi=20) #theta and phi change the angle of perspective
persp(x,y,fa,theta=30,phi=70)
persp(x,y,fa,theta=30,phi=40)

#2.3.3 Indexing Data

A=matrix(1:16,4,4)

A[2,3] #2nd row, 3rd column

A[c(1,3),c(2,4)] #rows 1 and 3, columns 2 and 4

A[1:3,2:4] #Rows 1-3, Columns 2-4

A[1:2,] #Rows 1 - 2

A[,1:2] #Columns 1-2

A[1,] #If you select one column or row, R will treat as a vector

A[-c(1,3),] #all rows except 1 and 3

A[-c(1,3),-c(1,3,4)] #all rows except 1 and 3, all columns except 1,3, and 4

dim(A) #dimensions of matrix

#2.3.4 Loading Data

library(ISLR) # They had a different way of loading libraries... I'm using Jose's method

fix(Auto) #pop-up display

dim(Auto)#chceck data frame dimensions

names(Auto)#check column names

#2.3.5 Additional Graphical and Numerical Summaries

plot(Auto$cylinders, Auto$mpg)
attach(Auto)
plot(cylinders,mpg)

cylinders = as.factor(cylinders) #converts quantitative into qualitative

plot(cylinders,mpg) #if x is categorical, plot is boxplot
plot(cylinders,mpg,col='red')
plot(cylinders,mpg,col='red',varwidth=T)
plot(cylinders,mpg,col='red',varwidth=T,horizontal=T)
plot(cylinders,mpg,col='red',varwidth=T,xlab='cylinders',ylab='mpg')

hist(mpg)
hist(mpg,col=2) #red is color 2
hist(mpg,col=2,breaks=15)

pairs(Auto) #scatterplot for every pair of variables

pairs(~ mpg + displacement + horsepower + weight + acceleration, Auto) #pairs but a subset

plot(horsepower,mpg)
identify(horsepower,mpg,name) #Very important.... click then hit esc to stop... otherwise you are in endless locator mode!!!!

summary(Auto) #summary of data frame

summary(mpg)

