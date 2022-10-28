#Virginica

#1. data(iris)
data("iris")

data_iris_virginica <- data.frame(iris)
data_iris_virginica

#2. Subset the iris file into 3 files per species
subset_virginica <- subset(data_iris_virginica, Species == 'virginica')
subset_virginica

virginica_SepalLength <- iris$Sepal.Length [101:150]
virginica_SepalLength
virginica_SepalWidth <- iris$Sepal.Width [101:150]
virginica_SepalWidth
virginica_PetalLength <- iris$Petal.Length [101:150]
virginica_PetalLength
virginica_PetalWidth <- iris$Petal.Width [101:150]
virginica_PetalWidth

#3. Get total mean for each species
Total_mean <- c(virginica_SepalLength, virginica_SepalWidth,
                virginica_PetalLength, virginica_PetalWidth)
Total_mean
mean(Total_mean)

#4. Get the mean of each characteristics of the species
mean_virginica_SepalLength <- mean(virginica_SepalLength)
mean_virginica_SepalLength
mean_virginica_SepalWidth <- mean(virginica_SepalWidth)
mean_virginica_SepalWidth
mean_virginica_PetalLength <- mean(virginica_PetalLength)
mean_virginica_PetalLength
mean_virginica_PetalWidth <- mean(virginica_PetalWidth)
mean_virginica_PetalWidth
