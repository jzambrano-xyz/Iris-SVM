#Support Vector Machines (SVM)

library(ISLR)
data <- iris
str(data)

library(e1071)

#Build the model
model <- svm(Species~., data = data)

predictions <- predict(model, data[1:4])
predictions

table <- data.frame(data, predictions)
table

#The model only had 4 errors amongst all of the observations
