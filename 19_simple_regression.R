# Experiment 19: Simple Linear Regression (Sales ~ Spend)

# Sample advertising data is created here, so no external file is needed.
advertising <- data.frame(
  Spend=c(100, 200, 300, 400, 500, 600, 700, 800),
  Sales=c(20, 30, 40, 50, 55, 65, 75, 85)
)

# Build and summarize regression model
model <- lm(Sales ~ Spend, data=advertising)
print(summary(model))

# Predict sales for new advertising spend values
new_data <- data.frame(Spend=c(250, 450, 750))
predictions <- predict(model, newdata=new_data)
print(predictions)

# Plot data and regression line
plot(advertising$Spend, advertising$Sales,
     main="Advertising Spend vs Sales",
     xlab="Spend", ylab="Sales")
abline(model, col="red")

# Note: This is illustrative sample data, not the original
# external Advertising dataset.
