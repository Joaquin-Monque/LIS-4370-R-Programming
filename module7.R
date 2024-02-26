s3 <- list(name = "Joaquin", age = 22, GPA = 3.0)
class(s3) <- "student"
s3

setClass("student", slots = list(name = "character", age = "numeric", GPA = "numeric"))
s4 <- new("student", name = "Joaquin", age = 22, GPA = 3.0)
s4
