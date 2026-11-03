# Experiment 5: Create and Manipulate Factor Variables

data("women")

height_factor <- factor(
  cut(
    women$height,
    breaks=c(0, 60, 65, 75),
    labels=c("Short", "Medium", "Tall")
  )
)

print(height_factor)
print(levels(height_factor))
print(table(height_factor))

set.seed(123)
letters_sample <- factor(sample(LETTERS, 10))

print(letters_sample)
print(levels(letters_sample))

# Uses the built-in women dataset and a random sample of LETTERS.
