# Experiment 7: Factors, Random Integers, and FizzBuzz

num <- 24
cat("Factors of", num, "are:\\n")

for(i in 1:num) {
  if(num %% i == 0) {
    print(i)
  }
}

set.seed(123)
random_numbers <- sample(-50:50, 10)
print(random_numbers)

for(i in 1:100) {
  if(i %% 3 == 0 && i %% 5 == 0) {
    print("FizzBuzz")
  } else if(i %% 3 == 0) {
    print("Fizz")
  } else if(i %% 5 == 0) {
    print("Buzz")
  } else {
    print(i)
  }
}

# Finds factors, generates 10 random integers, and runs FizzBuzz.
