library(templater)
library(QUBBD)

A <- matrix(rnorm(n = 4, mean = 0, sd = 1), nrow = 2, ncol = 2)
B <- matrix(rnorm(n = 4, mean = 0, sd = 1), nrow = 2, ncol = 2)
templater::mat_mult(A, B)
templater::mat_mult_c(A, B) # No longer works.... :(

myvec <- rnorm(100, 1, 1)
templater::vectorSum(myvec)

A
B

require(graphics)

dyn.load("../src/templater.so")
