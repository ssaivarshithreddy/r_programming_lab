# Experiment 4: Create Arrays with Dimension Names and Extract Elements

arr <- array(
  1:12,
  dim=c(3, 2, 2),
  dimnames=list(
    c("Row1", "Row2", "Row3"),
    c("Col1", "Col2"),
    c("Table1", "Table2")
  )
)

print(arr)
print(arr[2, 1, 1])
print(arr[3, 2, 2])

# Creates a named array and prints selected elements.
