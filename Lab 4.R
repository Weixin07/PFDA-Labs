#Data structures is how you want to save data in memory
#Matrix(data,nrow, ncol, byrow, dinames)

m1 = matrix()
m1

#Ways to input data for matrix
#1
v1 = 1:8
m1 = matrix(v1)
m1

#2
m1 = matrix(1:8)
m1

m1 = matrix(c(1,2,3,4,5,6,7,8))
m1

#Difference of Vectors and Matrices: Vectors will only have a row, matrix will have multiple rows and columns

#1:8 is the data, 2 is the number of rows, 4 is the number of columns
m1 = matrix(1:8, 2, 4)
m1

#again, 1:8 is the data, 2 is the number of rows, 4 is the number of columns, (byrow)TRUE means output the data in rows
#difference can be seen if observed closely between the last example and this as the default, which is what the last example is in, is byrow=FALSE
m1 = matrix(1:8, 2, 4, TRUE)
m1

#There are 3 ways to create the matrix utilizing all parameters
#Way 1: Make a simple matrix first without names, then use the built-in functions colnames and rownames to input names for columns and rows
v1 = 1:8
m1 = matrix(v1, 2, 4)
colnames(m1)=c("C1","C2","C3","C4")
rownames(m1)=c("R1","R2")
m1

#Way 2: Make the matrix with all parameters, but in sequence(data, nrow,ncol,byrow,dimnames)
m1=matrix(1:8,2,4,FALSE,list(c("r1","r2"),c("c1","c2","c3","c4")))
m1

#Way3: Make the matrix with all parameters, but not following the sequence. The compiler will only understand this method by adding indicators in front. 
#For eg, nrow=2 (but all the way at the back of the parameters)
m1=matrix(data=v1,dimnames=list(c("r1","r2"),c("c1","c2","c3","c4")), nrow=2,ncol=4,byrow=TRUE)
m1

#Exercise: values 1 to 24, in row, row1..., COL1...
a=matrix(data=1:24,dimnames=list(c("ROW1","ROW2","ROW3","ROW4","ROW5","ROW6"),c("COL1","COL2","COL3","COL4")), nrow=6,ncol=4,byrow=TRUE)
a

#Mathematical Operations by Matrices (Only if number of rows and columns are same)
v1=1:6
m1=matrix(v1,2,3)
m2=matrix(10:15,2,3)

mAdd=m1+m2
mAdd

mSub=m1-m2
mSub

mMul=m1*m2
mMul

mDiv=m1/m2
mDiv

#Accessing the matrix by rows and columns
m=matrix(1:20,4,5)
m

#To get data from 2nd row, 3rd column
m[2,3]

#To get all data from 3rd row
m[3,]

#To get all data from 4th column
m[,4]

#Concatenate 2 matrices
#Must be same number of rows (cbind)
m1=matrix(1:8,2,4)
m1

m2=matrix(1:4,2,2)
m2

m3=cbind(m1,m2)
m3

#Must be same number of columns (rbind)
m1=matrix(1:6,2,3)
m1

m2=matrix(1:12,4,3)
m2

m3=rbind(m1,m2)
m3

#Array
#Difference of Vectors, Matrices and Arrays: Vectors will only have a row(Single Dimension), matrix will have multiple rows and columns(2 Dimensions), array will have multiple matrices(Multi Dimensions)
#Their similarities: All must same data type

#array(data, dim=length(data),dimnames)

myArr = array(1:9)
myArr

myArr=array(1:9, dim = c(3,3,1)) #It means 3X3, with 1 dimension
myArr

myArr=array(1:24,dim = c(3,4,2)) #It means 3X4, with 2 dimensions
myArr

#Accessing elements
myArr[2, ,2] #It means 2nd row, no columns specified(entire row), 2nd dimension

myArr[3,3,1] #It means 3rd, 3rd column, 1st dimension

#To rename rows, columns and dimensions
#Way 1: Making variables to store name values, then construct
row_names=c("ROW1","ROW2","ROW3")
col_names=c("COL1","COL2","COL3","COL4")
dim_names=c("MATRIX1","MATRIX2")

myArr=array(1:24, dim=c(3,4,2),dimnames=list(row_names,col_names,dim_names))
myArr

#Way 2: Name values are included when constructed
myArr=array(1:24, dim=c(3,4,2),dimnames=list(c("ROW1","ROW2","ROW3"),
                                             c("COL1","COL2","COL3","COL4"),
                                             c("MATRIX1","MATRIX2")))
myArr

#Practice Questions
#1. Consider A=matrix(c(2,0,1,3), ncol=2) and B=matrix(c(5,2,4,-1), ncol=2).
# a) Find A + B
# b) Find A - B
#2. Find the solution for aA where a=3
#3. Find the solution for Ab,where b=c(7,4).
#4. Create three vectors v1,v2,v3 with integers and each vector has 3 elements.
# Combine the three vectors to become a 3×3 matrix( V)where each column represents
# a vector and name it.
#5. Create a 5X2 two dimensional array with multiples of 5 values
#, , 1
# [,1] [,2]
#[1,] 0 25
#[2,] 5 30
#[3,] 10 35
#[4,] 15 40
#[5,] 20 45
#, , 2
# [,1] #[,2]
#[1,] 50 75
#[2,] 55 80
#[3,] 60 85
#[4,] 65 90
#[5,] 70 95

#1
A = matrix(c(2,0,1,3),1,2)
B=matrix(c(5,2,4,-1),1,2)

C = A+B
C
D = A - B
D

#2
A = matrix(c(2,0,1,3),1,2)
B=matrix(c(5,2,4,-1),1,2)
a=3

C=A*a
C

#3
A = matrix(c(2,0,1,3),1,2)
b=c(7,4)

C=A*b
C

#4
v1=1:3
v2=4:6
v3=7:9

V=rbind(v1,v2,v3)
V

colnames(V)=c("C1","C2","C3")
rownames(V)=c("R1","R2","R3")
V

#5
a=0:19
b=a*5

c=array(b,dim = c(5,2,2))
c

#5 (Another method to do question 5, by using sequential method)
array(seq(from=0, length.out=20, by=5), c(5,2,2))
#It basically means that starting from 0, and the number of values that you want are 20, distance the values by 5
#So it'll be: 0, 5, 10, ......(until there's 20 values in total)