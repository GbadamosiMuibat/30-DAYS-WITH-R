library(dplyr)

# View mtcars dataset in a tabular form
Table_mt <- data.frame(mtcars)
print(Table_mt)      
 
#The mtcars dataset includes the following parameters:
#mpg: Miles per gallon.
#cyl: Number of cylinders.
#disp: Displacement (cu.in.).
#hp: Gross horsepower.
#drat: Rear axle ratio.
#wt: Weight (1000 lbs).
#qsec: 1/4 mile time.
#vs: Engine (0 = V-shaped, 1 = straight).
#am: Transmission (0 = automatic, 1 = manual).
#gear: Number of forward gears.
#carb: Number of carburetors. 

#The Grammar of Data Manipulation
#dplyr follows a set of verbs that form the grammar of data manipulation:
#filter(): Pick rows based on their values.
#select(): Pick columns by their names.
#mutate(): Create new columns based on existing ones.
#summarize(): Collapse many values down to a single summary.
#arrange(): Reorder rows.

# Filter rows where mpg is greater than 20
filtered_data <- filter(mtcars, mpg > 20)

# Select the columns mpg, cyl, and hp
selected_data <- select(mtcars, mpg, cyl, hp)

# Create a new column 'hp_kW' which is 'hp' converted to kilowatts
mutated_data <- mutate(mtcars, hp_kW = hp * 0.7457)

# Group the mtcars data by the number of cylinders (cyl)
grouped_data <- group_by(mtcars, cyl)

# Summarize the grouped data to calculate mean mpg for each group
summary_mtcars <- summarize(
  grouped_data,
  mean_mpg = mean(mpg),  # Calculate the mean of the 'mpg' column and store it in 'mean_mpg'
  count = n()
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

summary(grouped_data)

# Arrange the summarized data by mean_mpg in ascending order
arranged_mtcars_asc <- arrange(summary_mtcars, mean_mpg)
# Print the arranged data
print(arranged_mtcars_asc)

# Chain multiple operations using pipes

chained_operations <- mtcars %>%
  filter(mpg > 20) %>%
  select(mpg, cyl, hp) %>%
  mutate(hp_kW = hp * 0.7457) %>%
  arrange(desc(mpg))
# View the result of the chained operations
head(chained_operations)


exercise_data <- mtcars %>%
  filter(cyl == 6) %>%
  select(mpg,hp,wt) %>%
  mutate(wt_kg = wt * 0.453592) %>%
  arrange(desc(hp))
head(exercise_data)

# Read a CSV file using base R
data_base <- read.csv("path/to/yourfile.csv")

# Read a CSV file using readr
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
