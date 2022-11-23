#Drake Francis M. Jaculina BSIT 2A

#Worksheet-4 in R

#1. The table below shows the data about shoe size and height. Create a data frame.
shoeDF <- data.frame(
  Shoesize= c(6.5, 9.0, 8.5, 8.5, 10.5, 7.0, 9.5, 9.0, 13.0, 7.5, 10.5, 8.5, 12.0, 10.5), 
  Height= c(66.0, 68.0, 64.5, 65.0, 70.0, 64.0, 70.0, 71.0, 72.0, 64.0, 74.5, 67.0, 71.0, 71.0), 
  Gender= c("F", "F", "F", "F", "M", "F", "F", "F", "M", "F", "M", "F", "M", "M"), 
  Shoesize2= c(13.0, 11.5, 8.5, 5.0, 10.0, 6.5, 7.5, 8.5, 10.5, 8.5, 10.5, 11.0, 9.0, 13.0),
  Height2= c(77.0, 72.0, 59.0, 62.0, 72.0, 66.0, 64.0, 67.0, 73.0, 69.0, 72.0, 70.0, 69.0, 70.0),
  Gender2= c("M", "M", "F", "F", "M", "F", "F", "M", "M", "F", "M", "M", "M", "M")
  )
shoeDF

#a. Describe the data
#The data shows the different shoe size and height of male and female.
#The data is likely have a linear correlation. 

#b. Find the mean of shoe size and height of the respondents.
#Copy the codes and results.
mean1 <- shoeDF$Shoesize
mean(mean1)
#result
##[1] 9.321429
mean2 <-shoeDF$Shoesize2
mean(mean2)
#result
##[1] 9.5
both1 <- mean(c(mean1,mean2))
both1
#result
##[1] 9.410714
mean3 <-shoeDF$Height
mean(mean3)
#result
##[1] 68.42857
mean4 <-shoeDF$Height2
mean(mean4)
#result
##[1] 68.71429
both2 <- mean(c(mean3,mean4))
both2
#result
##[1] 68.57143

#c. Is there a relationship between shoe size and height? Why?
#Yes, there is a relationship or correlation between shoe size and height. 
#It is because as you can see in the given data, taller male or female tend to have a larger shoe size
#while shorter male or female tend to have a smaller shoe size.

#Factors
#A nominal variable is a categorical variable without an implied order. This
#means that it is impossible to say that ‘one is worth more than the other’.
#In contrast, ordinal variables do have a natural ordering.

#Example
Gender <- c("M","F","F","M")
factor_Gender <- factor(Gender)
factor_Gender
#Result
##[1] M F F M
##Levels: F M

#2. Construct character vector months to a factor with factor() and assign the result to
#factor_months_vector. Print out factor_months_vector and assert that R prints out
#the factor levels below the actual values.
months_vector <- c("March","April","January","November","January",
                   "September","October","September","November","August",
                   "January","November","November","February","May","August",
                   "July","December","August","August","September","November","February","April")
factor_months_vector <- factor(months_vector)
factor_months_vector

#3. Then check the summary() of the months_vector and factor_months_vector.
summary(months_vector)
summary(factor_months_vector)

#Interpret the results of both vectors. 
#For the summary of months_vector, it shows the total Length, Class, and the Mode
#while for the summary of factor_months_vector, it specify directly the months, 
#the sequence or arrangement was still the same, and the number from which it's used repeatedly.

#Are they both equally useful in this case?
#Yes, their are both equally useful in this case.

#4. Create a vector and factor for the table below.
#Note: Apply the factor function with required order of the level.
#new_order_data <- factor(factor_data,levels = c("East","West","North"))
#print(new_order_data)
factor_data <- c("East" = '1', "West" = '4', "North" = '3')
new_order_data <- factor(factor_data,levels = c("East","West","North"))
print(new_order_data)

#5. Enter the data below in Excel with file name = import_march.csv

#a. Import the excel file into the Environment Pane using read.table() function.
#Write the code.
import <- read.table("/cloud/project/RWorksheet_JACULINA#4/import_march.csv", header = TRUE, sep= ",")
import

#b. View the dataset. Write the code and its result.
view <- read.csv("/cloud/project/RWorksheet_JACULINA#4/import_march.csv")
view