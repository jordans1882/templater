#' Function to multiply two matrices in Fortran (iterative algorithm)
#'
#' Contains a triple for loop to multiply two matrices implemented in C.
#' Warning: this function is just for pedagogical purposes. Don't use this
#' function for computation
#' @param a Matrix a
#' @param b Matrix b
#' @keywords Matrix Multiplication
#' @author Jordan Schupbach
#' @seealso mat_mult_c mat_mult
#' @useDynLib templater
#' @export
#' @examples
#' a <- matrix(rnorm(10000), 100, 100)
#' b <- matrix(rnorm(10000), 100, 100)
#' system.time(AB <- mat_mult_f(a, b))


mat_mult_f <- function(a, b) {

  outer_dim1 <- nrow(a)
  outer_dim2 <- ncol(b)
  inner_dim  <- ncol(a)
  ab <- matrix(0, outer_dim1, outer_dim2)

  returned_data <- .Fortran("mat_mult_iter_f",
                            a          = as.double(a),
                            b          = as.double(b),
                            ab         = as.double(ab),
                            outer_dim1 = as.integer(outer_dim1),
                            outer_dim2 = as.integer(outer_dim2),
                            inner_dim  = as.integer(inner_dim))

  ab <- matrix(returned_data$ab, outer_dim1, outer_dim2)
  return(ab)
}
