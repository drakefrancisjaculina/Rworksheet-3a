#Versicolor

#1. data(iris)
data("iris")

data_iris_versicolor <- data.frame(iris)
data_iris_versicolor

#2. Subset the iris file into 3 files per species
subset_versicolor <- subset(data_iris_versicolor, Species == 'versicolor')
subset_versicolor

versicolor_SepalLength <- iris$Sepal.Length [51:100]
versicolor_SepalLength
versicolor_SepalWidth <- iris$Sepal.Width [51:100]
versicolor_SepalWidth
versicolor_PetalLength <- iris$Petal.Length [51:100]
versicolor_PetalLength
versicolor_PetalWidth <- iris$Petal.Width [51:100]
versicolor_PetalWidth

#3. Get total mean for each species
Total_mean <- c(versicolor_SepalLength, versicolor_SepalWidth,
                versicolor_PetalLength, versicolor_PetalWidth)
Total_mean
mean(Total_mean)

#4. Get the mean of each characteristics of the species
mean_versicolor_SepalLength <- mean(versicolor_SepalLength)
mean_versicolor_SepalLength
mean_versicolor_SepalWidth <- mean(versicolor_SepalWidth)
mean_versicolor_SepalWidth
mean_versicolor_PetalLength <- mean(versicolor_PetalLength)
mean_versicolor_PetalLength
mean_versicolor_PetalWidth <- mean(versicolor_PetalWidth)
mean_versicolor_PetalWidth
