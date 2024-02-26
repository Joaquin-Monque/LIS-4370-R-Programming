#1
A <- matrix(c(2, 0, 1, 3), ncol=2, byrow=TRUE)
B <- matrix(c(5, 2, 4, -1), ncol=2, byrow=TRUE)

# Calculate A + B
A_plus_B <- A + B

# Calculate A - B
A_minus_B <- A - B

# Print the results
print("A + B is:")
print(A_plus_B)

print("A - B is:")
print(A_minus_B)

#2
# Create the diagonal matrix
diag_matrix <- diag(c(4, 1, 2, 3))

# Print the matrix
print(diag_matrix)

#3
matrix_3 <- matrix(0, nrow=5, ncol=5)

# Set the diagonal to 3
diag(matrix_3) <- 3

# Set the first row to 1 and the first column to 2, with the exception of the (1,1)
matrix_3[1, ] <- 1
matrix_3[, 1] <- 2
matrix_3[1, 1] <- 3

# Print the matrix
print(matrix_3)
