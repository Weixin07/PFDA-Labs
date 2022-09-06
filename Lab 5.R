#Data Frames
#Is like a excel spreadsheet
#Can have different data types

#To make an empty data frame
df = data.frame()
df

#Input data into a data frame with vector
n = c(2,3,5)
s = c("aa","bb","cc")
b = c(TRUE, FALSE, TRUE)
df = data.frame(n, s, b)
df

#Making a progress report (with knowledge learnt thus far)
s = 1:5
n = c("Ali","Bob","Charlie","Danny","Eva")
m = runif(5,1,100)
m = round(m, digits = 2)
p_r = data.frame(s,n,m)
p_r

nrow(p_r)
ncol(p_r)
dim(p_r)
names(p_r)

new_pr = data.frame(SL_No=s,Name=n,Marks=m)
new_pr

names(new_pr)

#4 different ways to get a certain columns' values
new_pr["Name"]
data.frame(new_pr$Name)
new_pr$Name       #Retrieving with column name (Helpful during data analysis)
new_pr[,2]        #Retrieving with column no:

new_pr[3,]
new_pr[2:4,] #Access data from row 2 to 4
new_pr[3,2]

add_pr = c(SL_no = 6, Name = "Fang", Marks = 23.43)
add_pr
new_pr = rbind(new_pr,add_pr)
new_pr

grade = c("B","A","C","B","F","A")
new_pr = cbind(new_pr, grade)
new_pr

#To delete a column
new_pr['SL_No']=NULL
new_pr

#To delete rows
new_pr[2:4,]=NULL
new_pr

#With dataset
mtcars #a built-in dataset
nrow(mtcars)
ncol(mtcars)
dim(mtcars)
names(mtcars)
class(mtcars)

mtcars$gear
mtcars[4:8,]


#List
#Single dimensional data structure

#Making a list
n = c(2,3,5)
s = c("aa","bb","cc","dd","ee")
b = c(TRUE, FALSE, TRUE, FALSE, FALSE)
x = list(n,s,b,3) #The sequence of variables will affect the position of it in the list
x

y=list(x,1:5) #Adding another variable, but it will be listed as list "2"
y

#Accessing data from external sources
#Make sure the "\" is "\\"

#Access data from csv file 
sample_data = read.csv("D:\\APU Stuff\\Bachelor of Computer Science (Intelligent Systems) [APD2F2202CS(IS)]\\Semester 1\\Programming for Data Analysis [CT127-3-2-PFDA]\\Self\\Labs\\Lab 5 Dataset.csv" ,header=TRUE) #header=TRUE means that import the header in too, if FALSE, the header will not be imported in
sample_data

#Access data from excel sheet (The result printed out isn't that convenient to use, it is highly recommended to use csv(convert))
install.packages("readxl")
library(readxl)
excel1<- read_excel("D:\\APU Stuff\\Bachelor of Computer Science (Intelligent Systems) [APD2F2202CS(IS)]\\Semester 1\\Programming for Data Analysis [CT127-3-2-PFDA]\\Self\\Labs\\Lab 5 Dataset II.xlsx" , sheet=1) #sheet to pick which sheet to read
excel1

#Access data from txt file
j=scan(file="D:\\APU Stuff\\Bachelor of Computer Science (Intelligent Systems) [APD2F2202CS(IS)]\\Semester 1\\Programming for Data Analysis [CT127-3-2-PFDA]\\Self\\Labs\\Lab 5 Dataset III.txt")
j
