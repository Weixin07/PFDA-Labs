#Data Visualization

install.packages("ggplot2")
library(ggplot2)

#---------------------------------------------------------------------------------------------------------------------
#To make a pie chart
#Syntax: values, labels, titles, colour, direction
a=c(10,20,30)
pie(a)

#adding labels
a=c(10,20,30)
b=c("Apple","Banana","Orange")
pie(a,b)

#adjusting radius
pie(a,b,radius=1) #1.5 is max, anything above will be out of screen (I tried and 1.5 ady out lol RIP)

#adding title
c = "Fruit List"
pie(a,b,radius=1,main=c)

#modifying colours
d=c("green","blue","red")
pie(a,b,radius=1,main=c,col=d)

#Setting direction (default is FALSE, which is anticlockwise)
pie(a,b,radius=1,main=c,col=d,clockwise=TRUE)

#---------------------------------------------------------------------------------------------------------------------
#To get 3D graphs
library(plotrix)

pie3D(a)
pie3D(a,labels=l)

#---------------------------------------------------------------------------------------------------------------------
#Line Graph:
#Syntax: plot(value,type,xlabel,ylabel,title,colour)
x=c(25,38,20,10)
plot(x)

#Stating the type:
plot(x,type="p") #To get points
plot(x,type="l") #To get line
plot(x,type="o") #To get points and line

#Assigning labels (the axis label)
plot(x,type="o",xlab="Country",ylab="Temperature")

#Assigning title
plot(x,type="o",xlab="Country",ylab="Temperature",main="Climate")

#Assigning colour for line
plot(x,type="o",xlab="Country",ylab="Temperature",main="Climate",col="red")

#Multiple lines
x=c(25,38,20,10)
y=c(22,19,34,12)
test=c(23,34,45,56)
plot(x,type="o",xlab="Country",ylab="Temperature",main="Climate",col="red")
lines(y,type="o",xlab="Country",ylab="Temperature",main="Climate",col="blue")
lines(test,type="o",col="black")

#---------------------------------------------------------------------------------------------------------------------
#With real dataset:
sample_data = read.csv("D:\\APU Stuff\\Bachelor of Computer Science (Intelligent Systems) [APD2F2202CS(IS)]\\Semester 1\\Programming for Data Analysis [CT127-3-2-PFDA]\\Self\\Labs\\Lab 7 Dataset.csv" ,header=FALSE)
sample_data

names(sample_data)=c("Sepal_Length","Sepal_Width","Petal_Length","Petal_Width","Species")

sample_data
View(sample_data)

sample_data[142,]

iv=nrow(sample_data[sample_data$Species=="Iris-versicolor",])
ise=nrow(sample_data[sample_data$Species=="Iris-setosa",])
ivir=nrow(sample_data[sample_data$Species=="Iris-virginica",])
a=c(iv,ise,ivir)
l=c("Iris-Versicolor","Iris-Setosa","Iris-Virginica")
c=c("green","blue","red")
pie(a,l,radius=1,main="Iris Flower",col=c,clockwise=TRUE)

plot(x=sample_data$Petal_Length,type="o")
plot(x=sample_data$Petal_Length,y=sample_data$Petal_Width,type="p")

#---------------------------------------------------------------------------------------------------------------------
#ggplot
#Syntax: ggplot(data = <DATA>, mapping = aes(<MAPPINGS>)) + <GEOM_FUNCTION>()

ggplot(sample_data, aes(x=Petal_Length, y=Petal_Width))
ggplot(sample_data, aes(x=Petal_Length, y=Petal_Width)) + geom_line()
ggplot(sample_data, aes(x=Petal_Length, y=Petal_Width)) + geom_point()

#Modifying the display of different categories (Easier to understand the data, and making predictions)
ggplot(sample_data, aes(x=Petal_Length, y=Petal_Width)) + geom_point(aes(shape=factor(Species), colour=factor(Species)))

#Giving title
ggplot(sample_data, aes(x=Petal_Length, y=Petal_Width)) + geom_point(aes(shape=factor(Species), colour=factor(Species)))+ggtitle("Petal Length VS Petal Width based on Species")

#Adding a line to see the relationship
ggplot(sample_data, aes(x=Petal_Length, y=Petal_Width)) + geom_point(aes(shape=factor(Species), colour=factor(Species)))+ggtitle("Petal Length VS Petal Width based on Species")+stat_smooth(method = lm)
#---------------------------------------------------------------------------------------------------------------------
#Notes for assignment
#**If categorical data, use equal to
#**If continuous data, use greater than or equal to
#*
#*For eg,
#*To find students that have the grade distinction
#student-grade1=="Distinction"
#student-grade1>=75

