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
