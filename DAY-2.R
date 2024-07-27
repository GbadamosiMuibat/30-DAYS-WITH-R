# In R, Everything is R is object.Object is the fundamental building block of r.
#They store data and can be manipulated using various functions.



#Create a numeric object

num <- 42 
print(num) #display the numeric object


#inspecting object data type
#class() or mode() can be used to inspect data type
#class() function returns the class of the object,which indicates its abstract type
#mode() function returns the storage mode of an object,telling the fundamental type of the data at a low level

class(num) #display the object is "numeric"

mode(num) #display the object is fundamentally stored as "numeric"

#create a data frame

data_frame_example <- data.frame(
  name = c("John","Doe","Jane"),
  age = c(25 , 30, 28),
  score = c(100 , 150, 234)

)
print(data_frame_example)

class(data_frame) #display the object is a "data.frame"

mode(data_frame)  #display the object is fundamentally stored as "list"

#A factor is a data structure used for fields that take only predefined, finite, and categorical values.
# Factors are used to represent categorical data and can be ordered or unordered
#Why Factors are Best for Categorical Data
#Factors are ideal for categorical data because:
#They ensure that data is stored in a consistent and memory-efficient manner.
#They provide meaningful labels for categorical data, making it easier to interpret.
#They can be ordered to represent ranked data, allowing for proper analysis of ordinal data.

#create a factor

factor_example <- factor(c("High" , "medium" ,"low" ,"very low"))
print(factor_example)

class(factor_example)  #display the object is a "factor"

mode(factor_example)   #display the object is fundamentally stored as "numeric"

#Matrices are 2-dimensional arrays.

#create a matrix


matrix_example <- matrix(1:9,nrow = 3,ncol = 3)
print(matrix_example)

class(matrix_example)  #display the object is a "matrix"

mode(matrix_example) #display the object is fundamentally stored as "numeric"

matrix_example1 <- matrix(1:8,nrow = 2,ncol = 4)
print(matrix_example1)

class(matrix_example1)  #display the object is a "matrix"

mode(matrix_example1) #display the object is fundamentally stored as "numeric"


#A vector is a sequence of data elements of the same type (mode). 
#Vectors are fundamental in R because they allow you to store and manipulate data efficiently. 
#Objects can only store one value, but vectors can store multiple values of the same type (mode)

# Create a numeric vector
numeric_vector <- c(1, 2, 3, 4, 5)
print(numeric_vector)  # Display the numeric vector

# Check the data type of numeric_vector
class(numeric_vector)    # Returns the class/type of numeric_vector
mode(numeric_vector)     # Returns the mode of numeric_vector

character_vector <-  c("apple", "banana", "cherry")
print(character_vector)

class(character_vector)
mode(character_vector)

logical_vector <- c(TRUE, FALSE, TRUE)
print(logical_vector)

class(logical_vector)
mode(logical_vector)

#A list is a collection of objects of different types.
#Lists can contain elements such as numbers, strings, vectors, and even other lists. 
#Unlike vectors that contain values of the same object type (mode), list contain values of different object types.

# Create a list
list_example <- list(name="John", age=25, scores=c(90, 85, 88))
print(list_example)  # Display the list

# Check the data type of list_example
class(list_example)    # Returns the class/type of list_example
mode(list_example)     # Returns the mode of list_example

#A data frame is a table or a two-dimensional array-like structure. 
#Each column can contain different types of data.

# Create a data frame
data_frame_example <- data.frame(name=c("John", "Doe", "Jane"), age=c(25, 30, 28), score=c(90, 80, 85))
print(data_frame_example)  # Display the data frame

# Check the data type of data_frame_example
class(data_frame_example)    # Returns the class/type of data_frame_example
mode(data_frame_example)     # Returns the mode of data_frame_example

#Why Data Frames are Best for Storing Tabular Data
#Data frames are ideal for storing tabular data because:
#They can contain different types of data (numeric, character, factor) in each column.
#They are similar to tables in a database or spreadsheets in Excel, making them intuitive for data analysis.
#They support row and column indexing, which makes data manipulation straightforward.
#Many data analysis functions in R are designed to work seamlessly with data frames.


#Continuous data represents measurements and can take any value within a range. 
#Examples include height, weight, temperature, and time.
#Categorical data represents discrete categories or groups. 
#Examples include gender, blood type, colors, and satisfaction levels.


#Indexing Vectors
#Numeric Indexing
#You can access elements of a vector using their position (index) within square brackets [].

# Create a numeric vector
numeric_vector <- c(1, 2, 3, 4, 5)

# Access the third element of numeric_vector
third_element <- numeric_vector[3]
print(third_element)  # Display the third element

#Negative Indexing
#You can exclude elements from a vector using negative indices.
#Negative indexing lets you exclude specific elements by their positions. numeric_vector[-3] returns all elements except the third one.

# Exclude the third element from numeric_vector
excluded_third <- numeric_vector[-3]
print(excluded_third)  # Display the vector without the third element

#Logical Indexing
#You can access elements of a vector using a logical vector.
#Logical indexing uses a logical vector to include or exclude elements. Here, TRUE includes the element, and FALSE excludes it.

# Create a logical vector
logical_index <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
# Access elements of numeric_vector using logical_index
logical_subset <- numeric_vector[logical_index]
print(logical_subset)  # Display the subset based on logical index

#Named Indexing
#If a vector has names, you can access elements using those names.
#Named indexing allows you to access elements by their names, which is useful for readability and managing complex data.

# Create a named vector
named_vector <- c(a=1, b=2, c=3)
# Access the element named 'b'
element_b <- named_vector["b"]
print(element_b)  # Display the element named 'b'

#Indexing Data Frames
#Using Row and Column Indices
#You can access elements of a data frame using the row and column indices.
#Using data_frame_example[2, 3], you can access a specific element in a data frame by specifying its row and column indices.

# Create a data frame
data_frame_example <- data.frame(name=c("John", "Doe", "Jane"), age=c(25, 30, 28), score=c(90, 80, 85))
# Access the element in the second row, third column
element_2_3 <- data_frame_example[2, 3]
print(element_2_3)  # Display the element in the second row, third column
  
#Using Column Names
#You can access entire columns of a data frame using their names.
#By using data_frame_example$name, you can directly access a column by its name.

# Access the 'name' column
name_column <- data_frame_example$name
print(name_column)  # Display the 'name' column

#Subsetting Rows and Columns
#You can subset a data frame to include only specific rows or columns.
#data_frame_example[, c("name", "score")] selects all rows and only the specified columns.

#Subset data_frame_example to include only the name and score columns
subset_example <- data_frame_example[, c("name", "score")]
print(subset_example)  # Display the subset of the data frame

#Conditional z
#You can subset a data frame based on a condition.
#Using subset(data_frame_example, age > 25), you can select rows that meet a specified condition.


# Subset data_frame_example to include only rows where the age is greater than 25
conditional_subset <- subset(data_frame_example, age > 25)

print(conditional_subset)  # Display the subset based on the condition

#Indexing Lists
#Accessing List Elements
#You can access elements of a list using double square brackets [[]].

# Create a list
list_example <- list(name="John", age=25, scores=c(90, 85, 88))
# Access the 'age' element of list_example
age_element <- list_example[["age"]]
print(age_element)  # Display the 'age' element

