#Create a numeric objecct
num <- 42 
print(num) #display the numeric object


#inspecting object data type
#class() or mode() can be used to inspect data type
#class() function returns the class of the object,which indicates its abstract type
#mode() function returns the storage mode of an object,telling the fundamental type of the data at a low level

class(num) #display the object is "numeric"

mode(num) #display the object is fundamentally stored as "numeric"

#create a data frame

data_frame <- data.frame(
  name = c("John","Doe","Jane"),
  age = c(25 , 30, 28),
  score = c(100 , 150, 234)

)
print(data_frame)

class(data_frame) #display the object is a "data.frame"

mode(data_frame)  #display the object is fundamentally stored as "list"