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

heart_url <- "https://raw.githubusercontent.com/takumiymd/heart-disease-classification-team1/refs/heads/main/heart.csv"

heart_data <- read.csv(heart_url)

#Convert the numerical target to a descriptive category factor

heart_data$target <- factor(heart_data$target, levels =c(0,1),
                            labels = c("No_Disease","Disease"))

#removing duplicates

heart_data <- unique(heart_data)

# Step2: Balanced 80/20 Data Partitioning ----


# Step3: 10-Fold Cross-Validation for Tuning CP ----


# Step4: Unseen Predictions and Matrix Table Evaluation ----

