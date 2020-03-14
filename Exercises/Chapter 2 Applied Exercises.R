#2.4 Exercises

#8
library(ISLR)
library(ggplot2)
#8a
College

college = College
#8b
fix(college)

rownames(college) = college[,1]

fix(college)
#8ci.
summary(college)
#8cii.
pairs(college[,1:10]) #scatterplot matrix... this is a sick feature

attach(college)
#iciii
boxplot(Outstate,Private,names=c('Outstate','Private'))#private is binary... this makes no sense....

#8civ
Elite=rep('No',nrow(college))
Elite[college$Top10perc>50]='Yes'
Elite=as.factor(Elite)
college=data.frame(college,Elite)

summary(college)

boxplot(Outstate,Elite) # I also don't get this... Outstate is a measure of out of state students, Elite is a yes or no

#8cv
par(mfrow=c(1,1))#reset parameters
hist(Apps,col=10,breaks=20)
hist(Accept)

#8cvi

boxplot(Room.Board,Books,Personal,names=c('Room.Board','Books','Personal'),col='Blue')

#9

Auto

auto = na.omit(Auto)

summary(auto)
summary(Auto)

dim(auto)
dim(Auto)

attach(auto)

#what missing values are they referring to? I'm really not sure

#a
#Quan: mpg,displace,horse,accel
#Qual: name, cyl, year, origin

#b

range(mpg)
range(horsepower)
#so on and so forth...


#c

mean(horsepower)
sd(horsepower)

#d

auto2 = auto[-c(10:85),]

mean(auto2$horsepower)

mean(horsepower)

#e
pairs(auto)

#f

#displacement,horsepower, and weight - On the pairs you can see that as these go down, mpg goes up

#10

#a

library(MASS)

?Boston

#b

pairs(Boston)

#there are definitely some clear trends concerning crime and distance to employment centers and age of buildings

#c I just answered this mofos

#d What's to say? These results are pretty self-evident
range(Boston$crim)
range(Boston$tax)
range(Boston$ptratio)

library(plyr)

#e 
count(Boston,'chas') # 35 bound river 471 don't

#f

median(Boston$ptratio)

#g

min(Boston$medv)

Boston

which(Boston$medv==min(Boston$medv))

Boston[399,]

Boston[406,]

(sapply(Boston,range)) # all ranges

#They both are at the maximum for building ages,high pupil ratio, highest proportion of black residents

#h

length(which(Boston$rm>7))

length(which(Boston$rm>8))

subset(Boston,rm>8)

sapply(Boston,range)

#They are all pretty old, all have a high proportion of black residents, all have high median home value---big homes duh

