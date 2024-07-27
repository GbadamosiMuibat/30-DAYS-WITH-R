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
