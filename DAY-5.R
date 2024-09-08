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

# Fill missing values with the mean of the column
data$Age[is.na(data$Age)] <- mean(data$Age, na.rm = TRUE)
data$Score[is.na(data$Score)] <- mean(data$Score, na.rm = TRUE)
print(data)

# Sample data with incorrect data types
data2 <- data.frame(
  ID = c("1", "2", "3"),
  Age = c("25", "30", "35"),
  Score = c("85", "90", "95")
)

# View the structure of the data
str(data2)

# Convert Age and Score to numeric
data2$Age <- as.numeric(data2$Age)
data2$Score <- as.numeric(data2$Score)

# View the structure of the data again
str(data2)

# Sample data
data3 <- data.frame(
  X1 = c(1, 2, 3),
  X2 = c(4, 5, 6),
  X3 = c(7, 8, 9)
)

# View the data
print(data3)

# Rename columns
colnames(data3) <- c("ID", "Score1", "Score2")
print(data3)

# Load tidyr package
library(tidyr)

# Sample data
data4 <- data.frame(
  ID = c(1, 2, 3),
  Math = c(90, 80, 85),
  Science = c(95, 88, 92)
)

# View the data
print(data4)

# Gather columns into key-value pairs
data_long <- gather(data4, key = "Subject", value = "Score", Math, Science)
print(data_long)

# Spread key-value pairs into columns
data_wide <- spread(data_long, key = "Subject", value = "Score")
print(data_wide)
