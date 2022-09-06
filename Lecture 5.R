#Functions
#Functions are basically for tasks that you want your programm
#Syntax for Declaring Functions
#func_name <- function (arguments) {
# statements
#}

hellofunction <- function()
{
  print("Hello, World!")
}

#---------------------------------------------------------------------------------------------------------------------

#sprintf allows you to pass a variable into a string at a specific location
#%s signifies the location

#1
hellowithSprintffunction <- function(name)
{
  sprintf("Hello, %s", name)
}

hellowithSprintffunction("Tom")

#2
hellowithSprintffunction <- function(name)
{
  sprintf("%s, Hello", name)
}

hellowithSprintffunction("Tom")

#To insert multiple variables
hellowithSprintffunction <- function(name1, name2)
{
  sprintf("Hello, %s and %s", name1, name2)
}

hellowithSprintffunction("Tom", "Becky")
#MAH GAWD BECKY #ForeverTomJoke

#---------------------------------------------------------------------------------------------------------------------

#To set a default value
#In this example, y's default value is 2 if no other value is provided
pow <- function(x, y = 2) {
  res <- x^y
  print(paste(x, "raised to the power" , y, "is",res))
}
pow(3) #only x is given, thus y use default value

#and in here y has a value, so the default value won't be used
pow <- function(x, y = 2) {
  res <- x^y
  print(paste(x, "raised to the power" , y, "is",res))
}
pow(3,3) #x then y

#---------------------------------------------------------------------------------------------------------------------

#"Return" is to send back the value
check <- function(x) {
  if (x %% 2 == 0) {
    result <- "Even"
}else {
    result <- "Odd"
  }
  return(result)
  #print(paste(result))
  #print(result)
}
#These 3 all print out the values lul

check(8)

#---------------------------------------------------------------------------------------------------------------------
#Functions with the package "Crayon" yeay
#1
IDs= c(140,253,137,358,279)

my_print(IDs){
  for(i in IDs)
  {
    deptID = i %/% 100 
    if (deptID==1){
      message(red(i))
      }else if (deptID==2){
      message(green(i))
      }else{
      message(blue(i))
      }
  }
}
my_print(IDs)

#Method 2 with "Sort"
ID1= c(140,253,137,358,279)
ID1=sort(ID1)

my_print<-function(ID1){
  for(i in ID1)
  {
    deptID = i %/% 100 
    if (deptID==1) 
    {message(red(i))}
    else if (deptID==2) {message(green(i))}
    else {message(blue(i))}
  }
}

my_print(ID1)

#---------------------------------------------------------------------------------------------------------------------
#Notes:
#678  %% 10 will give you 8
#678 %/% 10 will give you 67