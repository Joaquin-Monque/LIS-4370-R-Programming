library(lattice)
library(ggplot2)
# Load the data
data <- read.csv("CASchools.csv")

# Basic Visualization with Base R
hist(data$students, breaks=20, col="skyblue", main="Distribution of Number of Students Across Schools", xlab="Number of Students", ylab="Frequency")

# Lattice Visualization
xyplot(math ~ read, data=data, main="Reading Scores vs. Math Scores Across Schools", xlab="Reading Scores", ylab="Math Scores")

# ggplot2 Visualization
ggplot(data, aes(x=expenditure, y=math)) + 
  geom_point(color="red", alpha=0.5) + 
  ggtitle("Per-Student Expenditure vs. Math Scores") +
  xlab("Per-Student Expenditure") + ylab("Math Scores")

