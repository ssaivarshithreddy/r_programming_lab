# Experiment 17: Explore the Titanic Dataset

# Built-in Titanic data is an aggregate frequency table.
data("Titanic")
titanic_data <- as.data.frame(Titanic)

# Survival versus passenger class
barplot(
  xtabs(Freq ~ Class + Survived, data=titanic_data),
  beside=TRUE,
  legend=TRUE,
  main="Survival vs Passenger Class",
  xlab="Passenger Class",
  ylab="Number of Passengers"
)

# Survival by gender
barplot(
  xtabs(Freq ~ Sex + Survived, data=titanic_data),
  beside=TRUE,
  legend=TRUE,
  main="Survival by Gender",
  xlab="Gender",
  ylab="Number of Passengers"
)

# The built-in Titanic table has no Age variable.
# Create a clearly labeled illustrative sample for the age histogram.
titanic_age_sample <- c(
  2, 4, 8, 12, 15, 18, 21, 25, 28, 30,
  32, 35, 38, 40, 42, 45, 48, 50, 55, 60,
  65, 70, 75, 22, 27, 33, 36, 44, 52, 58
)

hist(
  titanic_age_sample,
  main="Illustrative Passenger Age Sample",
  xlab="Age",
  col="lightblue"
)

# Note: The age histogram uses sample values, not actual Titanic records.
