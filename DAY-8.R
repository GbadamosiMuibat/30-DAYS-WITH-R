# Download the dataset
url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/00360/AirQualityUCI.zip"
download.file(url, destfile = "AirQualityUCI.zip")

# Unzip the dataset
unzip("AirQualityUCI.zip", files = "AirQualityUCI.csv")

# Load necessary packages
library(data.table)  # For fast data manipulation

# Define the path to the CSV file
csv_file <- "AirQualityUCI.csv"

# Read the CSV file using fread from data.table
air_quality_data <- fread(csv_file, sep = ";", na.strings = "-200")

# Display the first few rows of the dataset
head(air_quality_data)

# Load necessary package
library(dplyr)

# Select and summarize the CO(GT) column
co_summary <- air_quality_data %>% summarize(mean_CO = mean(`CO(GT)`, na.rm = TRUE))
