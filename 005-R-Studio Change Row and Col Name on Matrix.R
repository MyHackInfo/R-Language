# Name Vectors

alfa <- c("a","b","c","d","e","f")
val <- 1:6

# Create name of vector using names() functions
names(val) <- alfa
val

# Clear names of vectors
names(val) <- NULL
val

# How to crate name of row and col on Matrix
same <- rep(c("narsi","jeetu","rock"),3)


Data.Matrix <- matrix(same,3,3)
Data.Matrix

# Rename of row and col Using rownames() or colnames() function
rownames(Data.Matrix) <- c("Name","Name2","Name3")
colnames(Data.Matrix) <- c("First","First2","First3")
Data.Matrix

# Get row and col name
rownames(Data.Matrix)
colnames(Data.Matrix)

# Change Data of Matrix
Data.Matrix["Name2","First2"] <- "good"
Data.Matrix