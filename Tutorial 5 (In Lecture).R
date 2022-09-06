#1
x = as.integer(readline(prompt = "Enter the radius:"))
y = readline(prompt = "Do you want A(rea), C(ircumference) or D(iameter)?:")

calculateCircle <- function(radius)
{
  radius <- x
  Area = pi * radius^2
  Circumference = 2*pi*radius
  Diameter = 2*radius
  
  if (y == "A"){
  sprintf("The area is: %s cm^2.", Area)
  }else if(y == "C"){
  sprintf("The circumference is %s cm.", Circumference)
  }else {
  sprintf("The diameter is %s cm.", Diameter)
  }
}

calculateCircle()

#SampleAnswer for 1
area = function(r) {
  return (round((pi * r^2),2))
}
circumference = function(r) {
  return (round((2 * pi * r),2))
}
diameter = function(r) {
  return (round((2 * r),2))
}

calCircle = function() {
  radius = as.numeric(readline("Enter value for radius (cm):"))
  message("Calculate:\n(A)rea\n(C)ircumference\n(D)iameter")
  option = readline("Option:")
  calculation = switch(option, A="Area",C="Circumference", D="Diameter", "Error")
  result = switch(option, A=area(radius),C=circumference(radius), D=diameter(radius), "Error")
  if(result != "Error") {
    print(paste("The ", calculation," of the circle in cm is ", result))
  } else {
    print("Invalid Option")
  }
}
calCircle()

#---------------------------------------------------------------------------------------------------------------------

#2
x = as.integer(readline(prompt = "Enter a number between 1 and 9999:"))

reverseNumber <- function(number){
  number <- x
  
  y <- sort(x, decreasing = TRUE)
  
  sprintf("The number with its digits reversed is: %s", y)
}

reverseNumber()

#---------------------------------------------------------------------------------------------------------------------

#3
x = as.integer(readline(prompt = "Sales from last week:"))

salesEarnings <- function(grossSales){
  grossSales <- x
  
  earningFromSales = grossSales * 15 / 100
  
  earnings = earningFromSales + 100
  
  sprintf("Your salary is RM%s", earnings)
}

salesEarnings()

#---------------------------------------------------------------------------------------------------------------------

#4 Answer from lect

calFactorial = function() {
  value = as.integer(readline("Enter an integer: "))
  fac = 1
  temp = value
  while(temp > 0) {
    fac = fac * temp
    temp = temp - 1
  }
  print(paste(value,"! =",fac))
}

calFactorial()
