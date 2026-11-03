# Experiment 15: Exploratory Data Analysis on the iris Dataset

data("iris")

# Dimensions and summary
print(dim(iris))
print(summary(iris))

# Standard deviation and quantiles
print(sapply(iris[, 1:4], sd))
print(sapply(iris[, 1:4], quantile))

# Group by Species
species_avg <- aggregate(. ~ Species, data=iris, FUN=mean)
print(species_avg)

# Categorize Sepal.Length
iris$Sepal_Category <- cut(
  iris$Sepal.Length,
  breaks=c(0, 5, 6, 8),
  labels=c("Short", "Medium", "Long")
)

# Pivot table and category frequencies
pivot_table <- xtabs(~ Species + Sepal_Category, data=iris)
print(pivot_table)
print(table(iris$Sepal_Category))

# Uses the built-in iris dataset.
