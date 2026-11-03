# Experiment 16: EDA and Visualization Using USArrests

data("USArrests")

# Summary statistics
print(summary(USArrests))

# State with the largest rape arrest rate
print(rownames(USArrests)[which.max(USArrests$Rape)])

# Maximum and minimum murder rates
print(max(USArrests$Murder))
print(min(USArrests$Murder))

# Correlation among features
print(cor(USArrests))

# States above median assault arrests
median_assault <- median(USArrests$Assault)
print(rownames(USArrests)[USArrests$Assault > median_assault])

# States in the bottom 25% for murder
q25 <- quantile(USArrests$Murder, 0.25)
print(rownames(USArrests)[USArrests$Murder <= q25])

# Histogram
hist(USArrests$Murder,
     main="Murder Rate Distribution",
     xlab="Murder Rate")

# Density plot
plot(density(USArrests$Murder),
     main="Murder Rate Density")

# Scatter plot
plot(USArrests$Murder, USArrests$Assault,
     main="Murder vs Assault",
     xlab="Murder", ylab="Assault")

# Bar graph for the first 10 states
barplot(USArrests$Murder[1:10],
        names.arg=rownames(USArrests)[1:10],
        las=2,
        main="Murder Rates of First 10 States")

# Uses the built-in USArrests dataset.
