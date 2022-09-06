#Operators for Checking
#equal to (==)
#less than (<)
#less than or equal to (<=)
#greater than (>)
#greater than or equal to (>=)
#not equal (!=)

#Control Statements: To control the flow of a program
#if and else
#ifelse
#switch

#Loop Statements: To repeat a function
#for
#while
#repeat

#if and else
#if(condition){statements}
x = 10
if(x>0){
  print("x is positive")
}

x = -10
if(x>0){
  print("x is positive")
}else{                       #MUST put else right after closing statement
  print("x is negative")
}

#ifelse: For simple if and else statements
#ifelse(condition, action(if true), action(if false))
x=100
ifelse(x>0,"X is +ve", "x is -ve")

x=-50
ifelse(x>0,x,0)

#To get value(input) from user
#prompt is to get input
#readline is to let the system read the input
#by default the system reads all input as character type
x = as.integer(readline(prompt = "Enter a number:"))

if(x>0){
  print("x is +ve")
}else if(x<0){
  print("x is -ve")
}else{
  print("x is zero")
}

#Switch
#switch(option,value1,value2,......)

x=switch(5, "This", "is", "R", "Tutorial", "for", "Beginner")
print(x)

option=as.integer(readline(prompt="Enter your colour option:"))
x = switch(option, "Red", "Black", "Pink", "Blue")
print(x)

#Loops
#Steps: Initialization, Final/Condition, Statement, Iteration/Increment
#for eg,    i=1           i=30/i<=30    print(i)      i=i+1

#For
for(i in 1:30){         #for(var in initial:final)
  print(i)              #{statements}
}

#While
i=1                     #initialization
while(i<=30){           #while(condition)
  print(i)              #{statement
  i=i+1                 #increment/iteration}
}

#Repeat
i=1                     #initialization
repeat{                 #repeat
  print(i)              #statements
  i=i+1                 #increment
  if(i>30){             #break loop when condition met
    break
  }
}

# Practice Questions
# - Assign x with a random integer within range 0 to 10000
# - Write a program to check if x greater or equal to 1000, assign first digit of x to y,
# else, check if x greater or equal to 100, assign first digit of x to y,
# else, check if x greater than 10,assign first digit of x to y,
# else, assign one to y
# Print the first digit(y) using paste/print/message function paste(y)
# Pass the result into switch function, then
# display the number in words. Example: if x = 1, display "one"

x=runif(1,0,1000)

if(x>= 1000){
y=round(x/1000)
}else if(x>=100){
  y=as.integer(x/100)
}else if(x>=10){
  floor(x/10)
}else{
  y=1
}

print(y)

words=switch(y, "One", "Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten")
print(words)

# Practice Problem: Print the squares of the numbers(i x i) or (x^2) from 1 to 20
#o/p:1 4 9 16 25.....400

#While
i=1                
while(i<=20){          
  result=i*i
  print(result)
  i=i+1                 
}
