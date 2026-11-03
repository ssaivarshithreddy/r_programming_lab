# Experiment 8: Generate Random Numbers from a Normal Distribution

set.seed(123)
numbers <- rnorm(100, mean=50, sd=10)

print(numbers)

frequency <- table(round(numbers))
print(frequency)

# Generates 100 normally distributed values and counts rounded values.
