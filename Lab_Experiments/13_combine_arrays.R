# Experiment 13: Combine Multiple Arrays Row-Wise

arr1 <- array(1:6, dim=c(2, 3))
arr2 <- array(7:12, dim=c(2, 3))
arr3 <- array(13:18, dim=c(2, 3))

combined_array <- rbind(arr1, arr2, arr3)

print(arr1)
print(arr2)
print(arr3)
print(combined_array)

# Combines three arrays row-wise using rbind().
