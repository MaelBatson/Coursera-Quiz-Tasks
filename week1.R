## Week 1 Cuestionary 

##Use the Week 1 Quiz Data Set to answer questions 11-20.

##11- In the dataset provided for this Quiz, 
##what are the column names of the dataset? 

hw1_data <- read.csv("C:/Users/Hola/coursera/tasks/course2/hw1_data.csv")
View(hw1_data)

colnames(hw1_data)

##[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"  

##12- Extract the first 2 rows of the data frame and print them to the console. 
##What does the output look like?

head(hw1_data,2)

##   Ozone Solar.R Wind Temp Month Day
## 1    41     190  7.4   67     5   1
## 2    36     118  8.0   72     5   2

##13- How many observations (i.e. rows) are in this data frame?

nrow(hw1_data)

## 153

## or with str

str(hw1_data)

##'data.frame':	153 obs. of  6 variables:

##14- Extract the last 2 rows of the data frame and print them to the console. 
##What does the output look like?

tail(hw1_data,2)

##    Ozone Solar.R Wind Temp Month Day
##152    18     131  8.0   76     9  29
##153    20     223 11.5   68     9  30

##15- What is the value of Ozone in the 47th row?

hw1_data[47,"Ozone"]
##21

##16- How many missing values are in the Ozone column of this data frame?

sum(is.na(hw1_data$Ozone))
##37

##17- What is the mean of the Ozone column in this dataset? 
##Exclude missing values (coded as NA) from this calculation.

mean(hw1_data$Ozone, na.rm=TRUE)
##42.12931

##18- Extract the subset of rows of the data frame where Ozone values are above 
##31 and Temp values are above 90. What is the mean of Solar.R in this subset?

sub1<- subset(hw1_data,Ozone>31&Temp>90)
mean(sub1$Solar.R)
##212.8

##19- What is the mean of "Temp" when "Month" is equal to 6? 

sub2<-subset(hw1_data,Month==6)
mean(sub2$Temp)
##79.1

##20- What was the maximum ozone value in the month of May 
##(i.e. Month is equal to 5)?

sub3<-subset(hw1_data,Month==5)
max(sub3$Ozone, na.rm = TRUE)
##115