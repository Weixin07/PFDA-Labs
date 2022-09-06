#Basic math equations
a=3+4
b=3+5+7

c=6-4
d=5-8
e=8-3-2

f=8*6
g=8*2*3

h=4/3

i=9%%4
#%% is to find remainder of the equation

#Operator Precedence
#Preference Order: (),%%,*/,+-,= (If the same operator, start from left)
j=4+6/7-2*3
k=10+4*2-1
l=(10+4)*2-1
m=10+(4*2)-1
n=10+4*(2-1)

2+5*2-1
(2+5)*2-1
2+(5*2)-1
2+5*(2-1)
2+5*6-3%%2

#variables
#letters, numbers, . , _ (must start with a letter)
x=10
x1=20
x.y=30
x_z=40
x*=30 #*star sign is not allowed
1x=50 #number at the front is not allowed

y<-30
40->y

assign("z",50)
assign("name","Minnu")

#Removing Variables
j=300
j
rm(j) #to remove (j)
j

#data types
#numeric character date logical
xa=5
class(xa)
xb=5.5
class(xb)
xc=5L
class(xc)
xd=5.5L #if its decimal, it isn't Integer, so it wouldn't allow and will go back to default type(numeric).
class(xd)

xe=18.9L
class(xe)
xe=as.integer(xe) #If you force converting it into an Integer, it will round up and save just the front numbers
class(xe)
xe

xf="Hello"
class(xf)

xg="TP234385"
class(xf)

xh="2022-03-08"
class(xh)
xh=as.Date(xh) #By default it will be saved as character, need to change manually
class(xh)
xh

xi="2022-03-08 15:21"
class(xi)
xi=as.POSIXct(xi)
class(xi)
xi

#To validate data type
ya=5
is.numeric(ya)

yb=5L
is.integer(yb)

yc="Hello"
is.character(yc)

yd=5
is.logical(yd)

ye=FALSE
is.logical(ye)



###Practice Questions
weeks<-4
hoursPerWeek=40
assign("hourlyRate",50)
rm(hourlyRate)
assign("HOURLYRATE",50)
weeks=as.integer(weeks)
bonuse=as.integer(1000)
tax=as.numeric(0.2)
grossSalary=weeks*hoursPerWeek*HOURLYRATE
netSalary=grossSalary*(1-tax)
grossSalary
netSalary
