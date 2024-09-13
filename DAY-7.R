# Load necessary libraries

library(ggplot2)

# Load the mtcars dataset

data(mtcars)

# Display the first few rows of the dataset

head(mtcars)

# Basic scatter plot using the mtcars dataset
p <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  ggtitle("Basic Scatter Plot") +
  xlab("Weight (1000 lbs)") +
  ylab("Miles per Gallon")

# Display the plot
p

# Apply the theme_minimal
p_minimal <- p + theme_minimal()
p_minimal

# Apply the theme_classic
p_classic <- p + theme_classic()
p_classic

# Apply the theme_dark
p_dark <- p + theme_dark()
p_dark

# Customizing individual theme elements
p_custom <- p + theme(
  plot.title = element_text(hjust = 0.5, color = "blue", size = 14, face = "bold"),
  axis.title.x = element_text(color = "red", size = 12),
  axis.title.y = element_text(color = "green", size = 12),
  axis.text = element_text(color = "purple")
)
p_custom

# Customize labels
p_labels <- p + labs(
  title = "Scatter Plot: Weight vs. Miles per Gallon",
  subtitle = "Data from the 1974 Motor Trend US magazine",
  caption = "Source: mtcars dataset",
  x = "Car Weight (1000 lbs)",
  y = "Miles per Gallon (mpg)"
)
p_labels

# Customize colors
p_colors <- ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  scale_color_manual(values = c("red", "blue", "green")) +
  labs(
    title = "Scatter Plot: Weight vs. Miles per Gallon by Cylinder Count",
    x = "Car Weight (1000 lbs)",
    y = "Miles per Gallon (mpg)",
    color = "Cylinders"
  )
p_colors

# Faceted plot
p_facets <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  facet_wrap(~ cyl) +
  labs(
    title = "Faceted Scatter Plot: Weight vs. Miles per Gallon",
    subtitle = "Data from the 1974 Motor Trend US magazine",
    x = "Car Weight (1000 lbs)",
    y = "Miles per Gallon (mpg)"
  )
p_facets

# Faceted plot using facet_grid
p_grid <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  facet_grid(am ~ cyl) +
  labs(
    title = "Faceted Scatter Plot: Weight vs. Miles per Gallon",
    subtitle = "Data from the 1974 Motor Trend US magazine",
    x = "Car Weight (1000 lbs)",
    y = "Miles per Gallon (mpg)"
  )
p_grid

# Customizing aspect ratio
p_aspect <- p + theme(aspect.ratio = 1)
p_aspect

# Adding text annotations
p_annotations <- p +
  annotate("text", x = 3.5, y = 30, label = "High MPG", color = "blue", size = 5) +
  annotate("text", x = 5, y = 10, label = "Low MPG", color = "red", size = 5)
p_annotations
