# Experiment 12: Data Reshaping Using the airquality Dataset

if (!requireNamespace("reshape2", quietly=TRUE)) {
  install.packages("reshape2")
}
library(reshape2)

data("airquality")
print(head(airquality))

# Melt the dataset
melt_data <- melt(airquality, id.vars=c("Month", "Day"))
print(head(melt_data))

# Cast the dataset
cast_data <- dcast(
  melt_data,
  Month ~ variable,
  fun.aggregate=mean,
  na.rm=TRUE
)
print(cast_data)

# Monthly averages for Ozone, Solar.R, Wind, and Temperature
monthly_avg <- aggregate(
  cbind(Ozone, Solar.R, Wind, Temp) ~ Month,
  data=airquality,
  FUN=mean,
  na.rm=TRUE
)
print(monthly_avg)

# Uses the built-in airquality dataset; reshape2 is installed if needed.
