# Experiment 20: Multiple Regression Using ChickWeight

data("ChickWeight")
ChickWeight$Diet <- factor(ChickWeight$Diet)

# Build model using Time and Diet
model <- lm(weight ~ Time + Diet, data=ChickWeight)
print(summary(model))

# Predict weight for selected Time and Diet combinations
new_data <- data.frame(
  Time=c(10, 15, 20),
  Diet=factor(c(1, 2, 3), levels=levels(ChickWeight$Diet))
)

predictions <- predict(model, newdata=new_data)
print(predictions)

# Calculate training errors
actual <- ChickWeight$weight
predicted <- predict(model)

mse <- mean((actual - predicted)^2)
rmse <- sqrt(mse)

print(mse)
print(rmse)

# Uses the built-in ChickWeight dataset and reports MSE and RMSE.
