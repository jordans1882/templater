#' Function to multiply two matrices in C (iterative algorithm)
#'
#' Contains a triple for loop to multiply two matrices implemented in C.
#' Warning: this function is just for pedagogical purposes. Don't use this
#' function for computation
#' @param a Matrix a
#' @param b Matrix b
#' @keywords Matrix Multiplication
#' @author Jordan Schupbach
#' @seealso mat_mult_f mat_mult
#' @useDynLib templater
#' @export
#' @examples
#' A <- matrix(rnorm(10000), 100, 100)
#' B <- matrix(rnorm(10000), 100, 100)
#' system.time(AB <- mat_mult_c(A,B))

mat_mult_c <- function(A, B){
  outer_dim1 <- nrow(A)
  outer_dim2 <- ncol(B)
  inner_dim  <- ncol(A)

  returned_data <- .C("mat_mult_iter_c",
                            A          = as.double(A),
                            B          = as.double(B),
                            AB         = double(outer_dim1 * outer_dim2),
                            outer_dim1 = as.integer(outer_dim1),
                            outer_dim2 = as.integer(outer_dim2),
                            inner_dim  = as.integer(inner_dim))

  AB <- matrix(returned_data$AB, outer_dim1, outer_dim2, byrow = TRUE)
  return(AB)
}
