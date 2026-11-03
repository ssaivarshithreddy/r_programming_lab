# Experiment 10: Create and Manipulate the exam_data Data Frame

exam_data <- data.frame(
  name=c("Arun", "Bala", "Charan", "David", "Esha"),
  score=c(85, 70, 45, 90, 60),
  attempts=c(1, 2, 3, 1, 2),
  qualify=c(TRUE, TRUE, FALSE, TRUE, TRUE)
)

print(exam_data)

# Extract data
print(exam_data$name)
print(exam_data[1, ])
print(exam_data[, 2])

# Add a row
exam_data[nrow(exam_data) + 1, ] <- list("Farhan", 75, 1, TRUE)

# Add a column
exam_data$grade <- c("A", "B", "C", "A", "B", "B")
print(exam_data)

# Sort by score
sorted_data <- exam_data[order(exam_data$score), ]
print(sorted_data)

# Save the data frame in the current working directory
write.csv(exam_data, "exam_data.csv", row.names=FALSE)

# Creates, extracts, modifies, sorts, and saves a data frame.
