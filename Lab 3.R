#VECTOR
j=20
j=30

#To set a sequence of numbers into the variable
j=1:10

j=-5:56
j

#To find the length of the variable
length(j)

#To find the value of a certain number with their index(coordinate)
j[1]
#in R, it starts from 1, instead of 0 like the other languages

j[26]
j[52]

#To set multiple specific values into a variable
j=c(35,56,78,23,56,90,89)
class(j)

#runif generates random number inside the set range(numbers with decimals). In this example, 3 means choose 3 numbers, 1 is the start of the range and 40 being the end of the range.
z=runif(3,1,40)
z

#Setting names for each number (column)
names(z)=c("US","China","Malaysia")
z

#sample generate random numbers inside the set range(but only integers). In this example, -10:30 is the range, 5 is the number of numbers needed, "FALSE" means only unique numbers. **If you type "TRUE" at the last part, it means you allow repeated numbers to be chosen.
y=sample(-10:30,5,FALSE)
y

#FACTOR
#before changing the type of the vector into factor, the compiler will not categorize(aka finding unique values) the values
g=c("m","y","m","y")
class(g)
nlevels(g)

#after changing the type of vector into factor, the compiler will categorize and find the unique values (it will be named as "level")
g=factor(c("m","y","m","y"))
class(g)
nlevels(g)

g

#BUILT-IN FUNCTIONS
j=c(4,7,1,34,89,45,23,90,10)
min(j)
max(j)
sum(j)
mean(j)
median(j)
sort(j) #To find ascending order
sort(j,decreasing = TRUE) #To find descending order

y=22/7
y

round(y)

round(y,digit=3) #it means round it, but give 3(based on the number of digits you set) decimal points

sqrt(25) #To find the square root of a value

#To repeat something
rep(10,5) #10 is the value to be repeated, and 5 is the number of times to repeat a value
rep("*",10)
rep("-",10)

x="asdfghjklwertyuiosdfghjkxcvbnm"
nchar(x) #To find the number of characters in a variable (For character type only)

j=c(1,4,6,8)
length(j) #To find the number of values in a variable (For numbers only)

#ways to display something
#For more information, refer to
#https://stackoverflow.com/questions/36699272/why-is-message-a-better-choice-than-print-in-r-for-writing-a-package
#with message
message("Welcome to R Programming Labs")
x=10
y=20
message("The sum of value is ",x+y)

#with print (you can't put variable in it)
print("Welcome to R Programming")

#with paste
message="Hello"
paste(message, "Welcome")

#To change styles of output (with usage of the package "Crayon"-see what options are available by searching "crayon" in help tab)
message(yellow("Welcome to R Programming Labs")) #To change to yellow
message(green$bgYellow("Welcome to"), blue$bold$underline(" R Programming Labs")) #To set font colours and font style

#PRACTICE QUESTION:
# Create 5 students Progress Report with title "PFDA LAB Progress Report UC2F/APU2F2202"
# ***************************************
# PFDA LAB(Green colour)
# Progress Report(magenta colour,italics,underline)
# UC2F/APU2F2202(yellow background,bold,red colour)
# print * using repeat command

# -1. Test-I marks have to generate using runif command(25)
# -2. Test-II marks have to generate using runif command(25)
# -3. Final Exam marks have to generate using sample command(50)
# -4. Round off both the test marks
# -5. Generate Total Marks
# -6. Give names to each Total_Marks to represent students
# Ali Mohd Sarah Tan Muthu
# 42 38 26 48 26
# -7. Find out the total number of students we have in the report
# -8. Find out the highest score 48
# -9. Find out the least mark 26
# -10. Find out the average of this class

#title
a="PFDA Lab"
b="Progress Report"
c="UC2F/APU2F2202"
d=" "

e=nchar(a) + nchar(b) + nchar(c) + nchar(d)

message(green(a), d, magenta$italic$underline(b), d, red$bgYellow$bold(c))
rep("*",e)

#1
test1=runif(5,1,25)
test1

#2
test2=runif(5,1,25)
test2

#3
finalExam=sample(1:50,5,TRUE)
finalExam

#4
roundedTest1=round(test1)
roundedTest2=round(test2)

#5
totalMarks = roundedTest1 + roundedTest2 + finalExam
totalMarks

#6
names(totalMarks)=c("Ali","Mohd","Sarah","Tan","Muthu")
totalMarks

#7
length(names(totalMarks))

#8
max(totalMarks)

#9
min(totalMarks)

#10
mean(totalMarks)