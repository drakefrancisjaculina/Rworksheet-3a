#Setosa

#1. data(iris)
data("iris")

data_iris_setosa <- data.frame(iris)
data_iris_setosa

#2. Subset the iris file into 3 files per species
subset_setosa <- subset(data_iris_setosa, Species == 'setosa')
subset_setosa

setosa_SepalLength <- iris$Sepal.Length [1:50]
setosa_SepalLength
setosa_SepalWidth <- iris$Sepal.Width [1:50]
setosa_SepalWidth
setosa_PetalLength <- iris$Petal.Length [1:50]
setosa_PetalLength
setosa_PetalWidth <- iris$Petal.Width [1:50]
setosa_PetalWidth

#3. Get total mean for each species
Total_mean <- c(setosa_SepalLength, setosa_SepalWidth,
                setosa_PetalLength, setosa_PetalWidth)
Total_mean
mean(Total_mean)

#4. Get the mean of each characteristics of the species
mean_setosa_SepalLength <- mean(setosa_SepalLength)
mean_setosa_SepalLength
mean_setosa_SepalWidth <- mean(setosa_SepalWidth)
mean_setosa_SepalWidth
mean_setosa_PetalLength <- mean(setosa_PetalLength)
mean_setosa_PetalLength
mean_setosa_PetalWidth <- mean(setosa_PetalLength)
mean_setosa_PetalWidth
