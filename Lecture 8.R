install.packages("ggplot2")
library(ggplot2)

sample_data = read.csv("D:\\APU Stuff\\Bachelor of Computer Science (Intelligent Systems) [APD2F2202CS(IS)]\\Semester 1\\Programming for Data Analysis [CT127-3-2-PFDA]\\Self\\Labs\\Lab 7 Dataset.csv" ,header=FALSE)
names(sample_data)=c("Sepal_Length","Sepal_Width","Petal_Length","Petal_Width","Species")
ggplot(sample_data, aes(x=Petal_Length, y=Petal_Width))
ggplot(sample_data, aes(x=Petal_Length, y=Petal_Width)) + geom_line()
ggplot(sample_data, aes(x=Petal_Length, y=Petal_Width)) + geom_point()
ggplot(sample_data, aes(x=Petal_Length, y=Petal_Width)) + geom_path()
ggplot(sample_data, aes(x=Petal_Length)) + geom_bar()
ggplot(sample_data, aes(x=Petal_Length)) + geom_histogram()
ggplot(sample_data, aes(x=Petal_Length)) + geom_freqpoly()
ggplot(sample_data, aes(x=Petal_Length, y=Petal_Width)) + geom_boxplot()

#ggplot(diamond, aes(x=, y=, color=cut)) + geom_point()

