#Introduction to Functions in R
#In R, functions are essential building blocks that allow you to perform specific tasks. 
#Think of functions as recipes in your kitchen
#They provide step-by-step instructions to achieve a particular result. 
#Functions in R take inputs (called arguments), perform a series of operations, and then return an output.

# Defining a function to add two numbers

add_numbers <- function(x, y) {
  result <- x + y
  return(result)
}
# Using the function

sum <- add_numbers(3, 5)
print(sum)

#CSV Files
#CSV stands for Comma-Separated Values. 
#It is a simple file format used to store tabular data, such as a spreadsheet or database.
#Each line in a CSV file corresponds to a row in the table, and each value within the line corresponds to a cell in the table, separated by commas.
#Why are CSV Files Important?
#Simplicity: CSV files are straightforward and easy to read both by humans and machines.
#Compatibility: Most software programs (like Excel, R, Python, etc.) can easily read and write CSV files.
#Portability: CSV files are text-based, making them lightweight and easy to share.
#Example of a CSV File:
#Name,Age,Occupation
#John,23,Engineer
#Jane,25,Doctor
#Doe,31,Artist
#TXT Files
#TXT files are plain text files that can use different delimiters to separate values, such as tabs, commas, or spaces. 
#They are versatile and can store various types of data in a human-readable format.
#Why are TXT Files Important?
#Flexibility: TXT files can be customized with different delimiters to fit specific needs.
#Simplicity: Like CSV files, TXT files are easy to create and read.
#Compatibility: Most text editors and data processing tools can handle TXT files.
#Example of a TXT File (Tab-Delimited):
#Name    Age Occupation
#John    23  Engineer
#Jane    25  Doctor
#Doe     31  Artist
#Excel Files
#Excel files, typically with extensions .xls or .xlsx, are created by Microsoft Excel. 
#They can store data in spreadsheets, which include multiple sheets, various data types, and complex formatting.
#Why are Excel Files Important?
#Rich Features: Excel files support formulas, charts, and pivot tables, making them powerful for data analysis.
#Organization: They allow for organized storage of large datasets across multiple sheets.
#Compatibility: Widely used in business and academia, Excel files are compatible with many software tools.
#Example of an Excel File: A spreadsheet with columns for Name, Age, and Occupation, similar to the CSV and TXT examples, but with added formatting and possibly multiple sheets.

#Delimiters and Their Importance
#Delimiters are characters that separate values in a text file. 
#Common delimiters include commas (,), tabs (\t), and spaces. 
#The choice of delimiter affects how data is read and written in these files.
#Why are Delimiters Important?
#Data Parsing: Correctly identifying delimiters ensures that data is parsed accurately into columns and rows.
#Compatibility: Different systems and applications might prefer different delimiters, so understanding and using the correct delimiter is crucial for data exchange.

#Reading Data
#Reading data means importing or loading data from an external file into your R environment. This allows you to work with the data within R, performing analysis, manipulation, and visualization.
#Example: Imagine you have a CSV file with sales data. By reading this file into R, you can analyze sales trends, create visualizations, and generate reports.

#Writing Data
#Writing data means exporting or saving data from your R environment to an external file. This allows you to share your results, store processed data, and use the data in other applications.
#Example: After analyzing your sales data in R, you might want to save the summarized results to a CSV file to share with your team.

#Reading CSV Files
#To read a CSV file in R, you use the read.csv() function, which is a built-in function that comes with the base R package.

# Creating a sample data frame

sample_data <- data.frame(
  Name = c("John", "Jane", "Doe"),
  Age = c(23, 25, 31),
  Occupation = c("Engineer", "Doctor", "Artist")
)
# Writing the data frame to a CSV file
write.csv(sample_data, "sample_data.csv", row.names = FALSE)

# Reading the CSV file into a data frame
data <- read.csv("sample_data.csv")
# Displaying the data frame
print(data)

#Writing CSV Files
#To write a CSV file in R, you use the write.csv() function, which is also a built-in function that comes with the base R package.

# Writing the data frame to a CSV file
write.csv(data, "exported_data.csv", row.names = FALSE)

#Create a Sample TXT File
# Writing the data frame to a TXT file (tab-delimited)
write.table(sample_data, "sample_data.txt", sep = "\t", row.names = FALSE)

#Reading the TXT File
# Reading the TXT file into a data frame
data_txt <- read.table("sample_data.txt", header = TRUE, sep = "\t")
# Displaying the data frame
print(data_txt)

#Writing TXT Files
write.table(x, file, sep = " ", row.names = TRUE, col.names = TRUE, ...)
# Writing the data frame to a TXT file (tab-delimited)
write.table(data_txt, "exported_data.txt", sep = "\t", row.names = FALSE, col.names = TRUE)

#Reading Excel Files
#To read an Excel file in R, you use the read_excel() function from the readxl package.
