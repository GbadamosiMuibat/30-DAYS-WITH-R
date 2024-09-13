library(ggplot2)

ggplot(data = mtcars, aes(x = wt, y = mpg)) +  # Define the data and aesthetic mappings
geom_point(color = "blue", size = 3) +  # Customize point color and size
  labs(title = "Scatter Plot of Weight vs. MPG",
       x = "Weight (1000 lbs)",
       y = "Miles per Gallon") +  # Add titles and labels
  theme_minimal()  # Apply a minimal theme for a clean look

# Basic histogram
ggplot(data = mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 2, fill = "blue", color = "black") +  # Add histogram bars
  labs(title = "Histogram of Miles per Gallon",
       x = "Miles per Gallon",
       y = "Frequency")

# Basic boxplot
ggplot(data = mtcars, aes(x = factor(cyl), y = mpg)) +
  geom_boxplot(fill = "lightgreen", color = "black") +  # Add boxplot
  labs(title = "Boxplot of MPG by Cylinder Count",
       x = "Number of Cylinders",
       y = "Miles per Gallon")

# Basic line plot

ggplot(data = economics, aes(x = date, y = unemploy)) +
  geom_line(color = "red") +  # Add line plot
  labs(title = "Unemployment Over Time",
       x = "Date",
       y = "Number of Unemployed")

# Basic bar plot

ggplot(data = mtcars, aes(x = factor(cyl))) +
  geom_bar(fill = "purple") +  # Add bar plot
  labs(title = "Bar Plot of Cylinder Counts",
       x = "Number of Cylinders",
       y = "Count")
