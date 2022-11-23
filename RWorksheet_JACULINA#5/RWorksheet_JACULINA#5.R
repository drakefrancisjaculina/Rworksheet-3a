#Drake Francis M. Jaculina BSIT 2A

#Worksheet-4 in R

#Worksheet5

#1. The table shows the enrollment of BS in Computer Science, SY 2010-2011.
Enrollment1 <- data.frame("Course Year" = c ("1st", "2nd", "3rd", "4th"),
                          " 2019–2020" = c(80, 75, 70, 60))
Enrollment1

#a. Plot the data using a bar graph. Write the codes and copy the result.
Enrollment2 <- c(80, 75, 70, 60)
barplot(Enrollment2)

#b. Using the same table, label the barchart with
#Title = ” Enrollment of BS Computer Science
#horizontal axis = “Curriculum Year” and
#vertical axis = “number of students”
course_list <- c("1st","2nd","3rd","4th")
bscs2 <- barplot(Enrollment2,
        main = "Enrollment of BS Computer Science",
        xlab = "Curriculum Year",
        ylab = "number of students",
        names.arg = course_list)

#2. The monthly income of De Jesus family was spent on the following:

#60% on Food, 10% on electricity, 5% for savings, and
#25% for other miscellaneous expenses.

#a. Create a table for the above scenario. Write the codes and its result.
expensee <- c("Food", "Electricity", "Savings", "Other Miscellaneous Expense")
percent_1 <- c(60, 10, 5, 25)
expensee2 <- data.frame(table,percent_1)
expensee2
table1 <- table(expensee2)
table1

#b. Plot the data using a pie chart. Add labels, colors and legend.
#Write the codes and its result.
percentage_expenses <- c(60,10,5,25)
pie(percentage_expenses)
data1 <- round(percentage_expenses/sum(percentage_expenses)*100,1)
data2 <- paste(data1, "%", sep = " ")
piechart <- pie( percentage_expenses, labels = data2, cex = 0.8, col = rainbow(4), main = "De Jesus family Monthly Expenses")
legend("topright", c("Food", "Electricity", "Savings", "Other Miscellaneous Expense"),
       cex = 0.8 , fill =rainbow(4))

#3. Open the mtcars dataset.
data("mtcars")
data_mpg <- mtcars$mpg
data_mpg

#a. Create a simple histogram specifically for mpg (miles per gallon) variable.
#Use $ to select the mpg only. Write the codes and its result.
hist1 <- hist(data_mpg, xlab="Miles Per Gallon",  main="mpg Histogram")
hist2 <- hist(data_mpg)
#b. Colored histogram with different number of bins.
#hist(mtcars$mpg, breaks=12, col="red")
#Note: breaks= controls the number of bins
hist3 <-hist(data_set, breaks=12, col="red", xlab="Miles Per Gallon", main="mpg Histogram")
hist(mtcars$mpg, breaks=12, col="red")

#c. Add a Normal Curve
x <- mtcars$mpg
hhh <-hist(x, breaks=10, col="red", xlab="Miles Per Gallon",
        main="Histogram with Normal Curve")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2)


#4. Open the iris dataset. Create a subset for each species.

#a. Write the codes and its result.
data("iris")
data_setosa <- subset(iris, Species == "setosa")
data_setosa
data_versicolor <- subset(iris, Species == "versicolor")
data_versicolor
data_virginica <- subset(iris, Species == "virginica")
data_virginica

#b. Get the mean for every characteristics of each species using colMeans().
#Write the codes and its result.
#Example: setosa <- colMeans(setosa[sapply(setosaDF,is.numeric)])
setosa <- colMeans(data_setosa[sapply(data_setosa,is.numeric)])
setosa

versicolor <- colMeans(data_versicolor[sapply(data_versicolor,is.numeric)])
versicolor

virginica <- colMeans(data_virginica[sapply(data_virginica,is.numeric)])
virginica

#c. Combine all species by using rbind()
#The table should be look like this:
rbind_species <- rbind(setosa, versicolor, virginica)
rbind_species

#d. From the data in 4-c: Create the barplot().
#Write the codes and its result.
#The barplot should be like this.
#Figure 1: Iris Data using Barplot
barplot(rbind_species, beside = TRUE,
        main = "Iris Data",
        xlab = "Characteristics",
        ylab = "Mean Scores",
        col = c("red","green","blue"))
