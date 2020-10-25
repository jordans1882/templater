#' Matrix Multiplication Function
#'
#' This function computes the matrix product of two matrices
#'
#' @param a: A matrix
#' @param b: A matrix
#' @keywords matrix multiplication
#' @export
#' @examples
#'
#' a <- matrix(rnorm(9), 3, 3) 
#' b <- matrix(rnorm(9), 3, 3) 
#' # Hello World
#' c <- mat_mult(a, b)
#' c

mat_mult <- function(a, b) {
  c <- a %*% b
  return(c)
}
