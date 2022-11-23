#Drake Francis M. Jaculina BSIT 2A

#Worksheet-3b in R
library(dplyr)

#1. Create a data frame using the table below.

#a. Write the codes.
statistics1 <- data.frame(Respondents = c(seq(1,20)), 
        Sex = c(rep( c(2,1,2,1,2,1,2), c(2,1,7,1,7,1,1))),
        FathersOccupation = c(1,3,3,3,1,2,3,1,1,1,3,2,1,3,3,1,3,1,2,1), 
        PersonsatHome = c(5,7,3,8,5,9,6,7,8,4,7,5,4,7,8,8,3,11,7,6),
        Siblingsatschool = c(6,4,4,1,2,1,5,3,1,2,3,2,5,5,2,1,2,5,3,2),
        Typesofhouses = c(1,2,3,1,1,3,3,1,2,3,2,3,2,2,3,3,3,3,3,2)
        )
statistics1

#b. Describe the data.
#The provided data displays the Respondent's responses in 
#Sex, Fathers Occupation, Persons at home, Siblings at school, and Types of houses. 
#Females outnumber males in the column sex.
#This is a survey data.
#In the fathers occupation, the highest number is the farmer followed by others and last is the Driver.
#Respondent number 18 had the highest number of people at home in the "Persons at home" column.
#The most siblings in school are 6, while the fewest are 1.
#In the Types of houses column, the concrete is the highest with 10 respondents followed by semi-concrete 
#with 6 respondents, while wood is the lowest with 4 respondents.

#Get the structure or the summary of the data.
summary(statistics1)

#c. Is the mean number of siblings attending is 5?
#No, because siblings at school has 2.95 mean.

#d. Extract the 1st two rows and then all the columns using the subsetting functions.
#Write the codes and its output.
Extract_SubsetD <- subset(statistics1[1:2,  ]) 
Extract_SubsetD
#Output:
#Respondents Sex FathersOccupation Personsathome
#1           1   2                  1               5
#2           2   2                  3               7
#Siblingsatschool Typesofhouses
#1                  6               1
#2                  4               2

#e. Extract 3rd and 5th row with 2nd and 4th column. 
#Write the codes and its result.
Extract_SubsetE <- subset(statistics1[c(3,5),c(2,4)])
Extract_SubsetE
#Output:
#Sex PersonsatHome
#3   1            3
#5   2            5

#f. Select the variable types of houses then store the vector that results as types_houses.
types_houses <- select(statistics1, Typesofhouses)
types_houses
#g. Select only all Males respondent that their father occupation was farmer. 
#Write the codes and its output.
Father_farmer <- subset(statistics1[c(1:20), c(2,3)])
Father_farmer
Male_respo <- subset(statistics1,Sex == '1' & FathersOccupation == '1')
Male_respo

#h. Select only all females respondent that have greater than or equal to 5 number
#of siblings attending school. Write the codes and its outputs.
siblings <- subset(statistics1[c(1:20), c(1,2,5)])
siblings
female <- siblings[statistics1$Siblingsatschool >= '5',]
female

#2. Write a R program to create an empty data frame. Using the following codes:
df = data.frame(Ints=integer(),
                Doubles=double(), Characters=character(),
                Logicals=logical(),
                Factors=factor(),
                stringsAsFactors=FALSE)
print("Structure of the empty dataframe:")
print(str(df))

#a. Describe the results.
#It creates an empty data frame. 
#It resulted to NULL due to Initializing a data frame with a zero or empty column.

#3. Interpret the graph.
#Figure 1: Sentiments of Tweets per day - Donald Trump
#The graph presents the sentiments of tweets per day - Donald Trump.
#It has a legend at the right upper side, red for negative, yellow for neutral, and blue for positive.
#As you can see in the graph, there are more negative sentiments than neutral and positive sentiments. 
#The negative sentiment (shown by the red color) is the highest among the three for six consecutive days from July 14, 2020, to July 21, 2020. 
#And then Positive and Neutral sentiments as follows.
