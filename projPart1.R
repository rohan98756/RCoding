library(rpart)
library(rpart.plot)

# Read the training and test data
trainData <- read.csv("/Users/puja/Downloads/EarningsTrain.csv")
testData <- read.csv("/Users/puja/Downloads/EarningsTest.csv")

# Train the decision tree model
treeModel <- rpart(Earnings ~ . + GPA + Number_Of_Professional_Connections, 
                   data = trainData, 
                   method = "anova", 
                   control = rpart.control(cp = 0.0000001, minsplit = 5, minbucket = 2))

# Visualize the decision tree
rpart.plot(treeModel)

# Make predictions on the training data and calculate MSE
trainData$pred.Earnings <- predict(treeModel, trainData)
MSE_train <- mean((trainData$Earnings - trainData$pred.Earnings)^2)
print(paste("Training MSE:", MSE_train))

# Make predictions on the test data
testData$pred.Earnings <- predict(treeModel, testData)

# Get the path to your desktop directory
desktop_path <- file.path(Sys.getenv("HOME"), "Desktop")

# Write the test data with predictions to a CSV file on the desktop
write.csv(testData, file = file.path(desktop_path, "pred.Earnings.csv"), row.names = FALSE)
