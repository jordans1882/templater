testthat::context("mat_mult")
library("templater")
testthat::test_that("Test simple matrix multiplication function", {
  A <- matrix(rnorm(n = 4, mean = 0, sd = 1), nrow = 2, ncol = 2)
  B <- matrix(rnorm(n = 4, mean = 0, sd = 1), nrow = 2, ncol = 2)
  C <- templater::mat_mult(A, B)
  D <- A %*% B
  testthat::expect_equal(C, D)
})
