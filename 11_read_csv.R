# Experiment 11: Read a CSV File and Display Its Contents

csv_file <- "exam_data.csv"

# If Experiment 10 has not been run, create a small CSV file here.
if (!file.exists(csv_file)) {
  exam_data <- data.frame(
    name=c("Arun", "Bala", "Charan", "David", "Esha"),
    score=c(85, 70, 45, 90, 60),
    attempts=c(1, 2, 3, 1, 2),
    qualify=c(TRUE, TRUE, FALSE, TRUE, TRUE)
  )
  write.csv(exam_data, csv_file, row.names=FALSE)
}

data_csv <- read.csv(csv_file)

print(data_csv)
str(data_csv)
summary(data_csv)

# Reads and displays a CSV file. Creates a sample file if absent.
