# Experiment 14: Explore and Manipulate the ChickWeight Dataset

data("ChickWeight")
print(head(ChickWeight))

# Sort by weight
sorted_data <- ChickWeight[order(ChickWeight$weight), ]
print(head(sorted_data))

# Melt the dataset
if (!requireNamespace("reshape2", quietly=TRUE)) {
  install.packages("reshape2")
}
library(reshape2)

melt_chick <- melt(
  ChickWeight,
  id.vars=c("Chick", "Time", "Diet"),
  measure.vars="weight"
)
print(head(melt_chick))

# Cast by Diet and Time
cast_chick <- dcast(
  melt_chick,
  Diet ~ Time,
  value.var="value",
  fun.aggregate=mean
)
print(cast_chick)

# Uses the built-in ChickWeight dataset.
