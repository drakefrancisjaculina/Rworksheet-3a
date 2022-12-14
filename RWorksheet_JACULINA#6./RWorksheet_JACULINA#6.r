#Drake Francis M. Jaculina BSIT 2A

#Worksheet-6 in R

#Use the dataset mpg
library(ggplot2)
library(dplyr)
library(tidyverse)
data(mpg)
as.data.frame(data(mpg))
str(mpg)

#use of glimpse() - much tidier compared to str()
glimpse(mpg)

#Example. graph using ggplot()
ggplot(mpg, aes(cty, hwy)) +
  geom_point()

#1. How many columns are in mpg data set? How about the number of rows? Show the codes and its result.
#Number of columns in mpg data set
mpg_col <- ncol(mpg)
mpg_col
#Number of rows in mpg data set
mpg_row <- nrow(mpg)
mpg_row
#Ans: There are 11 columns and 234 rows in the mpg data set.

#2. Which manufacturer has the most models in this data set? Which model has the most variations? 
manuf_count <- mpg %>% group_by(manufacturer) %>% tally (sort = TRUE)
manuf_count
colnames(manuf_count)<-c("Manufacturer", "Counts")
#Ans: dodge is the manufacturer has the most models in this data set which has 37 models.

#a. Group the manufacturers and find the unique models. Copy the codes and result.
unique_manuf <- mpg %>% group_by(manufacturer, model) %>%
  distinct() %>% count()
colnames(unique_manuf) <- c("Manufacturer", "Model","Counts")
unique_manuf

#b. Graph the result by using plot() and ggplot(). Write the codes and its result.
#plot()
plot(unique_manuf)
#ggplot()
ggplot(unique_manuf, aes(Model, Manufacturer)) + geom_point()

#3. Same data set will be used. You are going to show the relationship of the model and the manufacturer.

#a. What does ggplot(mpg, aes(model, manufacturer)) + geom_point() show?
ggplot(mpg, aes(model, manufacturer)) + geom_point()

#b. For you, is it useful? If not, how could you modify the data to make it more informative?
#Ans: It is not useful, It's already informative but you can't see the ranking or the hierarchy 
#of the given data and some of the data is hidden. I could modify the data to make it more 
#informative using `geom_bar()` and adding legend.

#4. Using the pipe (%>%), group the model and get the number of cars per model. Show codes and its result.
group_model <- unique_manuf %>% group_by(Model) %>% count()
group_model
colnames(group_model) <- c("Model","Counts")
group_model

#a. Plot using the geom_bar() + coord_flip() just like what is shown below. Show codes and its result.
qplot(model,data = mpg,main = "Number of Cars per Model", xlab = "Model",ylab = "Number
of Cars", geom = "bar", fill = manufacturer) + coord_flip()

#b. Use only the top 20 observations. Show code and results.
twenty_obser <- group_model[1:20,] %>% top_n(2)
twenty_obser
#Using ggplot()
ggplot(twenty_obser,aes(x = Model, y = Counts)) + geom_bar(stat = "Identity") +coord_flip()

#5. Plot the relationship between cyl - number of cylinders and displ - engine displace-
#ment using geom_point with aesthetic colour = engine displacement. Title should be 
#???Relationship between No. of Cylinders and Engine Displacement???.

#a. Show the codes and its result.
ggplot(data = mpg, mapping = aes(x = displ, y = cyl, main = "Relationship between No. of Cylinders and Engine Displacement")) +
  geom_point(mapping=aes(colour = "engine displacement"))

#b. How would you describe its relationship?
#Ans: We can see that the the scatter plot it has 3 clustered data, the more number of cylinder increase the more engine 
#displacement increases or expand.

#6. Get the total number of observations for drv - type of drive train (f = front-wheel drive,
#r = rear wheel drive, 4 = 4wd) and class - type of class (Example: suv, 2seater, etc.).
#Plot using the geom_tile() where the number of observations for class be used as a
#fill for aesthetics.

#a. Show the codes and its result for the narrative in #6.
ggplot(data = mpg, mapping = aes(x = drv, y = class)) + geom_tile(aes(fill=class))

#b. Interpret the result.
#Ans: The result of given data is that it shows the class and drv. subcompact has 
#all the drv which include the 4, f, and r. Midsize and compact has the same class 
#which under the 4 wheeler drive, suv composed only of 4 and r in drv. Pickup has only 
#1 drv which the 4 wheeler drive, minivan results to have drv of f, and also the 
#2seater with drv of r only.

#7. Discuss the difference between these codes. Its outputs for each are shown below.
# Code #1
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, colour = "blue"))
# Code #2
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), colour = "blue")
#Ans: The given codes are mostly the same but it has slight differences. 
#The code #1, colour = "blue" is enclosed with mapping and aesthetic. 
#The result doesn't change into blue but instead gave us color red. While 
#code #2 the colour = "blue" is not enclosed with the mapping and aesthetic. 
#The result it show us that the color of the graph is blues. Because of the code 
#1 of this it was a interpreted as a categoral variable or as a group.

#8. Try to run the command ?mpg. What is the result of this command?
?mpg
#Ans: The result of this command it will go to the Help pane and it 
#will allow us to see or access the documentation on a particular 
#function of mpg.

#a. Which variables from mpg dataset are categorical?
#Ans: manufacturer, model, trans, drv, fl, and class.

#b. Which are continuous variables?
#Ans: displ, year, cyl, cty, and hwy.

#c. Plot the relationship between displ (engine displacement) and hwy(highway miles
#per gallon). Mapped it with a continuous variable you have identified in #5-b. What is its
#result? Why it produced such output?
ggplot(mpg, aes(x = displ, y = hwy, colour = cty)) + geom_point()

#9. Plot the relationship between displ (engine displacement) and hwy(highway miles
#per gallon) using geom_point(). Add a trend line over the existing plot using
#geom_smooth() with se = FALSE. Default method is ???loess???.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point(mapping=aes(color=class))+ 
  geom_smooth(se = FALSE, method = loess)

#10. Using the relationship of displ and hwy, add a trend line over existing plot. Set the
#se = FALSE to remove the confidence interval and method = lm to check for linear
#modeling.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) + geom_point() +
  geom_smooth(se = FALSE, method = lm)
