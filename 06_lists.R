# Experiment 6: Create an R List Containing Vectors, Matrices, and Functions

my_vector <- c(10, 20, 30, 40)
my_matrix <- matrix(1:9, nrow=3)

my_function <- function(x) {
  return(x * x)
}

my_list <- list(
  Vector=my_vector,
  Matrix=my_matrix,
  Function=my_function
)

print(my_list)
print(my_list$Vector)
print(my_list$Matrix)
print(my_list$Function(5))

# Creates a list and accesses each component.
