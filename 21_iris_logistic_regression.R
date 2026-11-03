# Experiment 21: Multinomial Logistic Regression Using iris

if (!requireNamespace("nnet", quietly=TRUE)) {
  install.packages("nnet")
}
library(nnet)

data("iris")
set.seed(123)

# Randomly split data into 80% training and 20% testing
sample_index <- sample(
  seq_len(nrow(iris)),
  size=floor(0.8 * nrow(iris))
)

train_data <- iris[sample_index, ]
test_data <- iris[-sample_index, ]

# Fit multinomial logistic regression for all three species
model <- multinom(
  Species ~ Petal.Length + Petal.Width,
  data=train_data,
  trace=FALSE
)

print(summary(model))

# Predict species on test data
predictions <- predict(model, newdata=test_data)

# Confusion matrix
confusion_matrix <- table(
  Actual=test_data$Species,
  Predicted=predictions
)
print(confusion_matrix)

# Calculate accuracy
accuracy <- sum(predictions == test_data$Species) / nrow(test_data)
print(paste("Accuracy:", round(accuracy * 100, 2), "%"))

# Uses the built-in iris dataset and evaluates all three species.
