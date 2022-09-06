#Data Manipulation and Transformation

install.packages("dplyr")
library(dplyr)

#create two csv file
A <- read.csv("D:\\APU Stuff\\Bachelor of Computer Science (Intelligent Systems) [APD2F2202CS(IS)]\\Semester 1\\Programming for Data Analysis [CT127-3-2-PFDA]\\Self\\Labs\\Lab 9 Dataset\\first.csv")
A
B <- read.csv("D:\\APU Stuff\\Bachelor of Computer Science (Intelligent Systems) [APD2F2202CS(IS)]\\Semester 1\\Programming for Data Analysis [CT127-3-2-PFDA]\\Self\\Labs\\Lab 9 Dataset\\second.csv")
B

#---------------------------------------------------------------------------------------------------------------------

#subset
#This is to apply "filters"
subset(A, SCORE>=50) 
subset(A, SCORE>=50 & SEM>1)

#Applying filters with selected columns
subset(A, SCORE>50, select=NAME)
subset(A, SCORE>50, select=c(NAME,SEM))

#---------------------------------------------------------------------------------------------------------------------

#sample
#randomly get some data from dataset
sample_n(A,3)
sample_n(A,1)

#using percentage to state the number of data needed
#100% sampling
sample_frac(A,1)

#50% sampling
sample_frac(A,.5)

#10% sampling
sample_frac(A,.1)

#---------------------------------------------------------------------------------------------------------------------

#select
#"filtering" a particular column
select(A, "NAME")
select(A,c("NAME","SEM"))

#retrieving dataset (but remove a particular column)
select(A,-"NAME")

#---------------------------------------------------------------------------------------------------------------------

#filter
#if dataset is big (600GB maybe?), filter is better than subset
filter(A,SEM==1)
x=filter(A,SEM==1 & SCORE>50)
x

##for eg in assignment
#x=filter(student,G3>=15 & gender == "Female")
#nrow(x)
#x=filter(student,G3>=15 & gender == "Female")
#nrow(y)

#---------------------------------------------------------------------------------------------------------------------

#summarize
summarize(A,Total=sum(SCORE)) #total is the heading
summarize(A,Total=sum(SCORE), Average=mean(SCORE))

#---------------------------------------------------------------------------------------------------------------------

#Mutate
#Adding columns within existing data
mutate(A,Grace_Mark=SCORE+5)
mutate(A,Total_Grace_Mark=SCORE+SCORE*0.1)

#---------------------------------------------------------------------------------------------------------------------

#Arrange
#Arranging the dataset in (ascending/descending) order by selected column
arrange(A,SCORE)
arrange(A,desc(SCORE))

#---------------------------------------------------------------------------------------------------------------------

#Piping
#combining 2 commands %>%
#lect say this is the worst function?

sample_frac(A,0.5) %>% select("SCORE") #50% of random data and with the score column
sample_frac(A,1) %>% select(SCORE)
sample_frac(A,0.5) %>% select(SCORE) %>% summarize(Total=sum(SCORE))
sample_frac(A,1) %>% select(SCORE) %>% summarize(Total=sum(SCORE))


#---------------------------------------------------------------------------------------------------------------------

#Groupby
#Grouping up data by "categories"
sample_frac(A,1) %>% select(SEM,SCORE) %>% group_by(SEM) %>% summarize(Total=sum(SCORE))

##eg for assignment
##sample_frac(student,1) %>% subset(student,G3>=15) %>% select(G3,age,gender) %>% group_by(age) %>% summarize(nrow(G3>=15))
















