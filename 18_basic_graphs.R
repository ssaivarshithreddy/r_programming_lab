# Experiment 18: Create Different Types of Graphs in R

x <- c(10, 20, 30, 40, 50)
y <- c(15, 25, 35, 45, 55)

# Box plot
boxplot(x, main="Box Plot", ylab="Values")

# Histogram
hist(x, main="Histogram", xlab="Values")

# Bar plot
barplot(x, main="Bar Plot", xlab="Categories", ylab="Values")

# Line chart
plot(x, y, type="l",
     main="Line Chart", xlab="X Values", ylab="Y Values")

# Scatter plot
plot(x, y,
     main="Scatter Plot", xlab="X Values", ylab="Y Values")

# Creates boxplot, histogram, bar plot, line chart, and scatter plot.
