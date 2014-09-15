library(caret)

exercise_data <- read.csv("pml-training.csv")
set.seed(1234)
inTrain <- createDataPartition(exercise_data$classe,p=0.6,list=FALSE)
training <- exercise_data[inTrain,]
testing <- exercise_data[-inTrain,]