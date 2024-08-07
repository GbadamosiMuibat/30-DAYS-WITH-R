# Load necessary library
library(dplyr)
data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Ella"),
  Age = c(25, 30, NA, 35, 28),
  Score = c(85, 90, 95, NA, 88)
)
print(data)
missing_values <- is.na(data)
print(missing_values)
data_clean <- na.omit(data)
print(data_clean)
