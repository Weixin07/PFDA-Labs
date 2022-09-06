#Data Exploration

# Import data
# Cleaning data
# Pre-Processing Data
# Data Exploration
# Data Visualization
# Data Manipulation

#---------------------------------------------------------------------------------------------------------------------

#read file (Importing Data)
sample_data = read.csv("D:\\APU Stuff\\Bachelor of Computer Science (Intelligent Systems) [APD2F2202CS(IS)]\\Semester 1\\Programming for Data Analysis [CT127-3-2-PFDA]\\Self\\Labs\\Lab 7 Dataset.csv" ,header=FALSE)

#---------------------------------------------------------------------------------------------------------------------

#Assigning Headers (Pre-Processing Data)
names(sample_data)=c("Sepal_Length","Sepal_Width","Petal_Length","Petal_Width","Species")
sample_data

#---------------------------------------------------------------------------------------------------------------------

#Different Viewing Methods (To further understand the data) (Data Exploration)

#This gives the first 6 rows
head(sample_data)

#This gives the first 10 rows
head(sample_data, 10)

#This gives the last 6 rows
tail(sample_data)

#This gives the last 10 rows
tail(sample_data, 10)

#To view the data
sample_data

#To view in table format
View(sample_data)

#To view the header of data set
names(sample_data)

#To view how the data is stored
class(sample_data)

#To check the length of your data set
length(sample_data)

#To view the number of columns in the data set
ncol(sample_data)

#To view the number of rows in the data set
nrow(sample_data)

#To access a certain column's data
sample_data$Sepal_Length
max(sample_data$Sepal_Length)
min(sample_data$Sepal_Length)

#To make a summary of the column's data [Has Min, Max, 1st and 3rd Quartile, Mean and Median] *For continuous data
summary(sample_data$Sepal_Length)

#To make a summary of all column's data
summary(sample_data)

#To list out the categories
factor(sample_data$Species)

#To count the number of categories
nlevels(factor(sample_data$Species))

#To view row's data [row,column]
sample_data[2,3]
sample_data[142,]
sample_data[48:64,]

#To view all data from the species "Iris-Versicolor"
sample_data[sample_data$Species=="Iris-versicolor",]
nrow(sample_data[sample_data$Species=="Iris-versicolor",])

#To view all data that has a petal width higher than 1.5
sample_data[sample_data$Petal_Width>1.5,]
nrow(sample_data[sample_data$Petal_Width>1.5,])

#To view with multiple conditions
sample_data$Sepal_Width
sample_data[sample_data$Sepal_Width >= 4,]
sample_data[(sample_data$Sepal_Width >= 4) & (sample_data$Petal_Width >= 0.3),]
#---------------------------------------------------------------------------------------------------------------------