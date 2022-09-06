#Conditional Statements
#if else
 
x <- c("java", "R", "python")
if("R" %in% x) {print("found")
  } else {  
    print("Not found")
  }
#if %in means search from the start
#if %in% means doesn't matter(search area)
#if in% means search at the end

#if else if
x=0
if(x>0){
  print("x is positive")
} else if(x<0) {
  print("x is negative")
}else {
  print("x is zero")
}

#ifelse(condition, yes, no)
x <- 6:-4
sqrt(x) #if will give an error, cuz negative numbers can't be squarerooted
#NaN: Not a Number

sqrt(ifelse(x>=0, x, NA)) #means that if x>= 0, then print x, else, print NA (in this case NA has replaced NaN by conditional statements)
#NA: Not Available

#switch(expression, case1, case2, etc...) 
#Can search by location and by value
grade = "B"
x=switch(grade, A="Excellent", B="Well done", C="Pass") #it'll check, is it B? No? Move to the next. Is it B? Yeap! And what's in B? "Well Done", okay print it out
print(x)

y <- switch(3,  "java",  "R",  "c", "python") #it'll look for the case number 3, which in this case is "C", thus it printed "C"
print(y)
#How can we use it?
#For eg, in a race, you need to find the player in 5th place, so you can just use this to extract the person's info

#Loop Statements: For, While, Repeat
#For vs While
#For is an definite loop, and while is an indefinite loop
#For eg, use for when you know the specific condition
#For eg, use while when you don't have a definite condition. For eg, when entry isn't x, then block. You don't know when exactly it will happen. This is what it means by indefinite.

#For
y <- c(1,2,3)
for (i in 1:length(y)) {  
  print(i) 
}

v <- c(1:5)
for (i in v) {  
  print(i) 
  }

#While
v <-10
while(v>0){
  print(v)
  v = v-1
}

#Repeat
v <- 9
repeat {
  print(v)
  v=v-1
  if(v < 1) {break} #MUST PUT A CONDITION FOR BREAK, OR ELSE IT WILL GO ON FOREVER LMAO YESUS HAD TO FORCE CLOSE
}

v <- 9
repeat {
  print(v)
  v=v-1
  if(v < 9) {break} 
}

#While vs Repeat
#only if the condition is met, while loop will allow to enter. In repeat, they allow you to loop once before deciding whether the condition is met(and continue to let you loop).
#For eg, in while loop, if x=0, and the condition is x>0, the loop wouldn't start.
#In repeat loop, if x=0, and the condition is x>0, the loop would start once, then start evaluating and stop if condition isn't met.

#Exercise 1
#Answer
a <- matrix(-3:5, 3, 3)
a=ifelse(a <0 , 0, a)
a

#Exercise 2
#Answers
#Method 1
v = c(10, 20, 30, 20, 15, 40, 30, 10, 50)
vct<-c()
for (i in v){
  if(!(i %in% vct)){ #if the value is not in vector vct, insert the value. If it is, then skip.
    vct=c(vct,i)
  }
}
print(vct)

#Method 2
unique(v) #To only print out one of each value(unique)

#Exercise 3
#Answers
#Method 1
v1 = c(10, 20, 30, 15, 40, 50)
v2 = c(15, 50, 10, 50)
vct=c()
for(i in v1){
  if(!(i %in% v2)){ #if v1's value is not in v2, then add to vector vct. If yes, then skip.
    vct=c(vct,i)
  }
}
print(vct)

#Method 2
setdiff(v1, v2) #To find the difference between variables

#Real Life Examples: List A contain registered students, list B contain students that paid. With this method, can find students that haven't paid yet.

#Exercise 4
x=7
IsPrime = TRUE
if (x<2) {IsPrime=FALSE}
i=2
while(i<=x-1){
  if (x%%i==0) {
    IsPrime=FALSE
    break
  }
  i=i+1
}
print(IsPrime)
