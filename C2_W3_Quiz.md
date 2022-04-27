---
title: "Coursera Data Science"
author: "José Manuel Coca"
date: '2022-04-27'
output: html_document
---

# R-Programming

## Week 3 Quiz

### 1.

Take a look at the 'iris' dataset that comes with R.In this dataset, what is the mean of 'Sepal.Length' for the species virginica? Please round your answer to the nearest whole number. (Only enter the numeric result and nothing else.)

```{r}
sub1<-subset(iris,Species=="virginica")
round(mean(sub1$Sepal.Length))
```

### 2.

Continuing with the 'iris' dataset from the previous Question, what R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?

```{r}
apply(iris[, 1:4], 2, mean)
```

### 3.

Load the 'mtcars' dataset in R. How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)? Select all that apply.

```{r}
sapply(split(mtcars$mpg, mtcars$cyl), mean)
with(mtcars, tapply(mpg, cyl, mean))
tapply(mtcars$mpg, mtcars$cyl, mean)
```

### 4.

Continuing with the 'mtcars' dataset from the previous Question, what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?

(**Please round your final answer to the nearest whole number.** Only enter the numeric result and nothing else.)

```{r}
horse4<-subset(mtcars,cyl==4)
horse8<-subset(mtcars,cyl==8)
round(abs(mean(horse8$hp)-mean(horse4$hp)))
```

### 5.

If you run

```{r}
debug(ls)
```

what happens when you next call the 'ls' function?

```{r}
ls
```

Execution of 'ls' will suspend at the beginning of the function and you will be in the browser.
