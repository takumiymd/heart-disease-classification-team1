# STAT 1100: GROUP PROJECT
# Team 1
# since: November 11, 2026


# Required Packages ----
install.packages("caret")
install.packages("rpart")
install.packages("rpart.plot")
library(caret)
library(rpart)
library(rpart.plot)

# Step1: Load and clean Clinical Health Data ----
heart_data <- read.csv("heart.csv")
View(heart_data)

heart_data$target <- factor(heart_data$target,
                            levels = c(0, 1),
                            labels = c("No_Disease", "Disease"))


# Step2: Balanced 80/20 Data Partitioning ----

set.seed(123)

train_index <- createDataPartition(heart_data$target,p=0.80,list=FALSE)

train_data <- heart_data[train_index,]

test_data <- heart_data[-train_index,]

table(train_data$target)



# Step3: 10-Fold Cross-Validation for Tuning CP ----



# Step4: Unseen Predictions and Matrix Table Evaluation ----
