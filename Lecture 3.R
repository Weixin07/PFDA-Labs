#To make a variable a matrix
v <- c(1,2,3,4,5,6,7,8,9)
a=matrix(v,nrow=3,ncol=3)
a

#To name the rows and columns
a2=matrix(v,nrow=3,ncol=3, dimnames=list(c("row1","row2","row3"), c("col1","col2","col3")))
a2

#To add 2 matrices
a3=a+a2
a3

#To find value in 1st row, 2nd column
a[1,2]

#To find values in the 1st row
a[1, ]

#To find values in the 2nd column
a[ ,2]

v2 = c(9,8,7,6,5,4,3,2,10)
b=matrix(v2,nrow=3,ncol=3)
b

#rbind is to bind the 2 matrices by rows (next row)
c= rbind(a,b)
c

#cbind is to bind the 2 matrices by columns (next column)
d=cbind(a,b)
d

#To return indices | Basically to find the location of value in the matrix (in coordinates)
which(a==min(a), arr.ind=TRUE) #This is finding where the minimum value is

#Arrays
#dim= 
vector1 <- c(2,18,30)
vector2 <- c(10,14,17,13,11,15,22,11,33)
row_names <- c("ROW1","ROW2","ROW3") 
col_names <- c("COL1","COL2","COL3","COL4")
matrix_names <- c("Matrix1","Matrix2","Extra")
data<- array(c(vector1,vector2),dim = c(3,4,3),dimnames = list(row_names,col_names, matrix_names ))
data
 
#Data Frame
x <- 10:5
y <- -3:2
q=c("Hockey","Foot ball", "Baseball", "Basket Ball", "Tennis", "Cricket")
data <- data.frame(x,y,q) #data.frame basically puts the 3 mentioned variables and put them into a frame, making rows and columns. Each variable occupies a column.
data
newdata <- data.frame(First=x, Second=y, Sport=q) #Basically just naming the columns to a more appropriate name
newdata

nrow(data) #To find the number of row in variable data
ncol(data) #TO find the number of column in variable data
dim (data) #To find the dimension of the data frame "data", it has 6 rows and 3 columns as of now.
names(data) #To find the names of the columns

# List
data <-list(c(1,2,3),3:7,4:5)
data
newlist <- list(data, 1:10)
newlist

length(newlist) #To find the length of the list (meaning by how many list is in there. For example, data has 3 lists so it'll return as 3. Newlists has 2 lists (data is only considered as a list in newlist) so it'll return as 2.)
names(data) #To find names of the columns

#To find the value in a list
data[[2]][3] #The [[2]] means the second list, [3] means the 3rd number in the row
