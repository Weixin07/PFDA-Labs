#Matrix
#1
a=matrix(nrow=3,ncol=3)
a

#2
a = c(1,2,3,4,5,6,7,8,9)
b =matrix(a,nrow=3,ncol=3)
b

#3
a = c(1,2,3,4,5,6,7,8,9)
b = matrix(a,nrow=3,ncol=3, dimnames=list(c("row1","row2","row3"), c("col1","col2","col3")))
b

#4
a = c(1,2,3,4,5,6)
a1 =matrix(a,nrow=2,ncol=3)
b = c(9,8,7,6,5,4)
b1 =matrix(b,nrow=2,ncol=3)

c=a1+b1
c

d=a1-b1
d

e=a1*b1
e

f=a1/b1
f

#5
a = c(1,2,3,4,5,6,7,8,9,10,11,12)
b =matrix(a,nrow=3,ncol=4)
b

b[2,3]
b[3, ]
b[ ,4]

#6
a = c(1,2,3,4,5,6,7,8,9,10,11,12)
b =matrix(a,nrow=3,ncol=4)

c=b[2,3]
d=b[1,2]

e=c*d
e

#7
a = c(1,2,3,4,5,6)
a1 =matrix(a,nrow=2,ncol=3)
b = c(12,11,10,9,8,7,6,5,4,3,2,1)
b1 =matrix(b,nrow=4,ncol=3)

a1
b1

c=rbind(a1,b1)
c

#8
a = c(1,2,3,4,5,6)
a1 =matrix(a,nrow=2,ncol=3)
b = c(10,9,8,7,6,5,4,3,2,1)
b1 =matrix(b,nrow=2,ncol=5)

a1
b1

c=cbind(a1,b1)
c

#9
a = c(1,2,3,4,5,6,7,8,9,10,11,12)
b =matrix(a,nrow=3,ncol=4)
c =max(b)
d =min(b)

c
d

#10
a = c(1,2,3,4,5,6,7,8,9,10,11,12)
b =matrix(a,nrow=3,ncol=4)

which(b==max(b), arr.ind=TRUE)
which(b==min(b), arr.ind=TRUE)

#Array
#1
a = c(9,8,7,6,5,4,3,2,1)
b = c(1,2,3,4,5,6,7,8,9)

c = array(c(a,b),dim = c(3,3,2))
c

#2
a = c(9,8,7,6,5,4,3,2,1)
b = c(1,2,3,4,5,6,7,8,9)

c = array(c(a,b),dim = c(3,3,2))
c

print(c[3,3,1])

#3
a = c(1,2,3,4,5,6,7,8)
b = c(9,10,11,12,13,14,15,16)
c = c(17,18,19,20,21,22,23,24)

d = array(c(a,b,c),dim = c(2,4,3))
d

#Data Frames
#1
a = data.frame()
a

#2
a = 10:5
b = -3:2
c = 1:6
d = 7:12

e = data.frame(a,b,c,d) 
e

#3
a = 10:5
b = -3:2

e = data.frame(First=a,Second=b) 
e

e[ , "Second"]

#4
a = 10:5
b = -3:2

e = data.frame(a,b) 
e[c(1,2), ]

#5
a = 10:5
b = -3:2

e = data.frame(a,b) 
e

c = 1:6

cbind(e, c)

#6
a = 10:5
b = -3:2

e = data.frame(a,b) 
e

c = c(1,2)
d = c(3,4)

rbind(e, c, d)

#7
a = 10:5
b = -3:2
c = 1:6
d = 7:12

e = data.frame(a,b,c,d) 
e

subset(e, select = -c(c,d) )

#List
#1
a = "a"
b = 1
c = 10:5
d = -3:2
e = data.frame(c,d)
f = list(c(c(4,5,7),c(2,3,4)))

g = list(c(a,b,c,d,e,f))
g

#2
a = 1:5
b = c(1,2,3,4,5,6,7,8,9)
b1 = matrix(b,nrow=3,ncol=3)
c = list(c(c(4,5,7),c(2,3,4)))

d = list(c("First List"=a,"Second List"=b1,"Third List"=c))
d

d[[1]][1] 
d[[1]][2] 
