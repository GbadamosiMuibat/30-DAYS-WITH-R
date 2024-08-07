# View mtcars dataset in a tabular form
Table_mt <- data.frame(mtcars)
print(Table_mt)

# Install dplyr package if not already installed
install.packages("dplyr")

# Load dplyr package into R
library(dplyr)

# Filter rows where mpg is greater than 20
filtered_data <- filter(mtcars, mpg > 20)

# View the filtered data
filtered_data

# View the filtered data
filtered_data

# Select the columns mpg, cyl, and hp
selected_data <- select(mtcars, mpg, cyl, hp)

# View the selected columns
selected_data

# Create a new column 'hp_kW' which is 'hp' converted to kilowatts
mutated_data <- mutate(mtcars, hp_kW = hp * 0.7457)

# View the mutated data
head(mutated_data)

# Group the mtcars data by the number of cylinders (cyl)
grouped_data <- group_by(mtcars, cyl)

# Summarize the grouped data to calculate mean mpg for each group
summary_mtcars <- summarize(
  grouped_data,
  mean_mpg = mean(mpg)  # Calculate the mean of the 'mpg' column and store it in 'mean_mpg'
)

# Group the data by the number of cylinders
grouped_data <- group_by(mtcars, cyl)

# Summarize the grouped data
summary_mtcars <- summarize(
  grouped_data,
  mean_mpg = mean(mpg),  # Calculate the mean of the 'mpg' column
  mean_hp = mean(hp),    # Calculate the mean of the 'hp' column
  count = n()            # Count the number of rows (cars) in each group
)

# Print the summarized data
print(summary_mtcars)

# Another example of summarize with multiple summary statistics

summary_mtcars <- summarize(
   grouped_data,
  mean_mpg = mean(mpg),
  mean_hp = mean(hp),
  max_hp = max(hp),  # Maximum horsepower in each group
  min_wt = min(wt),  # Minimum weight in each group
  count = n()
  
)

# Calculate the average miles per gallon (mpg)
average_mpg <- summarize(mtcars, avg_mpg = mean(mpg))

# View the summarized data
average_mpg

# Arrange the summarized data by mean_mpg in ascending order
arranged_mtcars_asc <- arrange(summary_mtcars, mean_mpg)

# Print the arranged data
print(arranged_mtcars_asc)

# Arrange the summarized data by mean_mpg in descending order
arranged_mtcars_desc <- arrange(summary_mtcars, desc(mean_mpg))

# Print the arranged data
print(arranged_mtcars_desc)

# View the arranged data
head(arranged_data)

# Chain multiple operations using pipes
chained_operations <- mtcars %>%
  filter(mpg > 20) %>%
  select(mpg, cyl, hp) %>%
  mutate(hp_kW = hp * 0.7457) %>%
  arrange(desc(mpg))

# View the result of the chained operations
head(chained_operations)

# Read a CSV file using base R
data_base <- read.csv("path/to/yourfile.csv")

# Read a CSV file using readr
library(readr)
data_readr <- read_csv("path/to/yourfile.csv")

# Write a CSV file using base R
write.csv(data_base, "path/to/yourfile.csv")

# Write a CSV file using readr
write_csv(data_readr, "path/to/yourfile.csv")

# Filter out rows with missing values in base R
cleaned_data_base <- na.omit(data_base)

# Filter out rows with missing values using dplyr
cleaned_data_dplyr <- data_readr %>%
  filter(!is.na(column_name))

# Write the cleaned data to a new file
write_csv(cleaned_data_dplyr, "path/to/cleanedfile.csv")

