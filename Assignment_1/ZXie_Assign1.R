# CUNY DATA 605 Assignment 1
# Problem set 1
# 1) Calculate the dot product u.v where u = [0.5; 0.5] and v = [3; -4]
install.packages("geometry")
library(geometry)
u <- c(0.5, 0.5)
v <- c(3, -4)
dot(v, u)

# 2) What are the lengths of u and v? Please note that the mathematical notion of the length of a vector is not the same as a computer science definition.

# Mathematical Notion

len_u <- sqrt(dot(u, u))
len_u

len_v <- sqrt(dot(v, v))
len_v

# Computer Science
length(u)
length(v)

# 3) What is the linear combination: 3u - 2v
comb <- 3* u - 2 * v
comb

# 4) What is the angle between u and v?
angle <- acos( dot(u, v) / ( sqrt(dot(u, u)) * sqrt(dot(v, v)) ) )
angle_degree <- angle * 180 / pi
angle_degree

# Problem Set 2

my_solve <- function(A, b)
  {
  A <- cbind(A, b)
  mul <- A[2,1]/A[1,1]*(A[1,])
  A[2,] = A[2,]-mul
  
  mul = (A[3,1]/A[1,1]*(A[1,]))
  A[3,] = A[3,]-mul
  
  mul = (A[3,2]/A[2,2]*(A[2,]))
  A[3,] = A[3,]-mul
  
  x3 <- (A[3,4]/A[3,3])
  x2 = (A[2,4]-A[2,3]*x3)/A[2,2]
  x1 = (A[1,4]-A[1,3]*x3 - A[1,2]*x2)/A[1,1]
  
  return(c(x1, x2, x3))
}

A <-  matrix(
  c(1, 2, -1, 1, -1, -2, 3, 5, 4), 
  nrow=3, 
  ncol=3)

b <- matrix(
  c(1, 2, 6),
  nrow = 3,
  ncol = 1)


my_solve(A, b)

