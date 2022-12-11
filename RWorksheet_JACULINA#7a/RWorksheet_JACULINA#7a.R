#Drake Francis M. Jaculina BSIT 2A

#Worksheet-7a in R

#Packages
install.packages("openxlsx")
library(openxlsx)
library("writexl")
library(mlbench)
library(xlsx)
library(Hmisc)
library(pastecs)
library(readxl)
library("AppliedPredictiveModeling")

#1. Create a data frame for the table below.

Student <- seq(1:10)
Pre_test <- c(55,54,47,57,51,61,57,54,63,58)
Post_test <- c(61,60,56,63,56,63,59,56,62,61)

Stude_scoresDF <- data.frame(Student,Pre_test,Post_test)
Stude_scoresDF

#a. Compute the descriptive statistics using different packages (Hmisc and pastecs).
#Write the codes and its result.

#Hmisc
Hmisc_d <- describe(Stude_scoresDF)
Hmisc_d 
#Pastecs
Pastecs_s <- stat.desc(Stude_scoresDF)
Pastecs_s

#2. The Department of Agriculture was studying the effects of several levels of a
#fertilizer on the growth of a plant. For some analyses, it might be useful to convert
#the fertilizer levels to an ordered factor.

# The data were 10,10,10, 20,20,50,10,20,10,50,20,50,20,10.

#a. Write the codes and describe the result.
data1 <- c(10,10,10,20,20,50,10,20,10,50,20,50,20,10)
data1
data1_orderedFactor <- factor(data1, ordered = TRUE)
data1_orderedFactor
#The given data were reorder or arranges the levels of the factors in ascending order.

#3. Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study
#the exercise levels undertaken by 10 subjects were “l”, “n”, “n”, “i”, “l” ,
#“l”, “n”, “n”, “i”, “l” ; n=none, l=light, i=intense

#a. What is the best way to represent this in R?
ten_sub <- factor(c("l","n","n","i","l","l","n","n","i","l"), 
                  c("n", "l", "i"), ordered = TRUE)
ten_sub

#4. Sample of 30 tax accountants from all the states and territories of Australia and
#their individual state of origin is specified by a character vector of state mnemonics
#as:

state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")
state

#a. Apply the factor function and factor level. Describe the results.
factorState <- factor(state)
factorState
levels(state)
levels(factorState)

#The given data was categorize and store it as levels. When using factor, It resulted to
#[1] tas sa  qld nsw nsw nt  wa  wa  qld vic nsw vic qld
#[14] qld sa  tas sa  nt  wa  vic qld nsw nsw wa  sa  act
#[27] nsw vic vic act
#When you directly check the levels of object state, it resulted as NULL. 
#But when you check the levels using an already factored data, it resulted to
#[1] "act" "nsw" "nt"  "qld" "sa"  "tas" "vic" "wa" 

#5. From #4 - continuation:

#Suppose we have the incomes of the same tax accountants in another vector (in
#suitably large units of money)

incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
incomes

#a. Calculate the sample mean income for each state we can now use the special
#function tapply():

#Example: giving a means vector with the components labelled by the levels
incmeans <- tapply(incomes, factorState, mean)

#Note: The function tapply() is used to apply a function, here mean(), to each group
#of components of the first argument, here incomes, defined by the levels of the second
#component, here statef2

#2 that tapply() also works in this case when its second argument is not a factor,
#e.g., ‘tapply(incomes, state)’, and this is true for quite a few other functions,
#since arguments are coerced to factors when necessary (using as.factor()).

#b. Copy the results and interpret.
incmeans
#Results
#act      nsw       nt      qld       sa      tas 
#44.50000 57.33333 55.50000 53.60000 55.00000 60.50000 
#vic       wa 
#56.00000 52.25000 

#It creates a group summaries that was based on factor levels. 
#The result was computes into a statistical measures.

#6. Calculate the standard errors of the state income means (refer again to number 3)

stdError <- function(x) sqrt(var(x)/length(x))

#Note: After this assignment, the standard errors are calculated by:
incster <- tapply(incomes, factorState, stdError)

#a. What is the standard error? Write the codes.
incster <- tapply(incomes, factorState, stdError)
incster

#b. Interpret the result.
#The result is a structure of the same length of the given factor.
#It shows all the standard deviation from act to wa.

#7. Use the titanic dataset.

#a. subset the titatic dataset of those who survived and not survived. Show the
#codes and its result.
data(Titanic)
Titanic <- data.frame(Titanic)
Titanic

subset_survive <- subset(Titanic, Survived == "Yes")
subset_survive
subset_died <- subset(Titanic, Survived == "No")
subset_died

#8. The data sets are about the breast cancer Wisconsin. The samples arrive periodi-
#cally as Dr. Wolberg reports his clinical cases. The database therefore reflects this
#chronological grouping of the data. You can create this dataset in Microsoft Excel.

library(mlbench)
data("BreastCancer")
Data_Breast_Cancer <- data.frame(BreastCancer)
Data_Breast_Cancer

#a. describe what is the dataset all about.
#According to r-project.org,The data were reported by Dr: Wolberg on the basis on his 
#clinical cases in studying breast cancer: The objective is to identify each of a number of benign or malignant tissue samples from biopsy details. 

#b. Import the data from MS Excel. Copy the codes.
Breast_cancer_xlsx <- read_excel("/cloud/project/WORSHEET7/DATA_BREAST_CANCER.xlsx")
Breast_cancer_xlsx
#c. Compute the descriptive statistics using different packages. Find the values of:

#c.1 Standard error of the mean for clump thickness.
Standard_error <- function(x) sd(x)/sqrt(length(x))
SE_clump <- Standard_error(Breast_cancer_xlsx$`CL. thickness`)
SE_clump

#c.2 Coefficient of variability for Marginal Adhesion.
coe_var <- sd(Breast_cancer_xlsx$`Marg. Adhesion`) / mean(Breast_cancer_xlsx$`Marg. Adhesion`) * 100
coe_var

#c.3 Number of null values of Bare Nuclei.
null_values1 <- sum(is.na(Breast_cancer_xlsx$`Bare. Nuclei`))
null_values1
#It has 2 NA but the given codes that I input resulted to zero (0) so instead I tried to used the subset.
null_values2 <- subset(Breast_cancer_xlsx,`Bare. Nuclei` == "NA")
null_values2

#c.4 Mean and standard deviation for Bland Chromatin
mean_BlandChromatin <- mean(Breast_cancer_xlsx$`Bl. Cromatin`)
mean_BlandChromatin
sd_BlandChromatin <- sd(Breast_cancer_xlsx$`Bl. Cromatin`)
sd_BlandChromatin

#c.5 Confidence interval of the mean for Uniformity of Cell Shape
Confi.mean <- mean(Breast_cancer_xlsx$`Cell Shape`)
Confi.mean
Confi.n <- length(Breast_cancer_xlsx$`Cell Shape`)
Confi.sd <- sd(Breast_cancer_xlsx$`Cell Shape`)
Confi.se <- Confi.sd/sqrt(Confi.n)
Confi.se
alpha = 0.05
degrees.freedom = Confi.n - 1
t.score = qt(p=alpha/2, df=degrees.freedom,lower.tail=F)
t.score
margin.error <- t.score * Confi.se
lower.bound <- Confi.mean - margin.error
upper.bound <- Confi.mean + margin.error
print(c(lower.bound,upper.bound))

#d. How many attributes?
attributes_BC <- attributes(Breast_cancer_xlsx)
attributes_BC

#It has 3 attributes, It shows the class, row.names, and names.

#e. Find the percentage of respondents who are malignant. Interpret the results.
malignant1 <- subset(Breast_cancer_xlsx[c(1:49), c(11)])
malignant1
pos.malignant <- subset(Breast_cancer_xlsx, Class == 'malignant')
pos.malignant
#Percentage 
malignant <- 17  / 49 * 100
malignant
#We can conclude that the data of were reported by Dr: Wolberg on the basis on his 
#clinical cases in studying breast cancer 
#Out of 47 respondents, there are 17 respondents who are malignant with corresponding of 34.69388 percentage.

#9. Export the data abalone to the Microsoft excel file. Copy the codes.
install.packages("AppliedPredictiveModeling")
library("AppliedPredictiveModeling")
data(abalone)
View(abalone)
head(abalone)
summary(abalone)

write.xlsx(abalone, "abalone.xlsx")