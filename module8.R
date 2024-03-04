#Step 1 
require(pryr)
require(ISLR)
require(boot)
library(data.table)
library(plyr)

Student <- read.table("Assignment 6 Dataset.txt", header = TRUE, sep = ",")
Student

StudentAverage = ddply(Student, "Sex", transform, Grade.Average=mean(Grade))
write.table(StudentAverage, "Sorted_Average.csv", sep = ",")

sex = StudentAverage$Sex
mean(sex)

#Step 2
# Filter for names containing the letter "i"
i_students <- subset(Student, grepl("[iI]", Student$Name))
i_students

#Step 3
# Write the filtered names to a CSV file
write.table(i_students, "i_students.csv", sep = ",")

i_students




