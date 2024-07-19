# In R, Everything is R is object.Object is the fundamental building block of r.They store data and can be manipulated usingt various functions.



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

# Factors are used to represent categorical data and can be ordered or unordered

#create a factor

factor_example <- factor(c("High" , "medium" ,"low" ,"very low"))
print(factor_example)

class(factor_example)

mode(factor_example)
