% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mat_mult.r
\name{mat_mult}
\alias{mat_mult}
\title{Matrix Multiplication Function}
\usage{
mat_mult(a, b)
}
\arguments{
\item{a:}{A matrix}

\item{b:}{A matrix}
}
\description{
This function computes the matrix product of two matrices
}
\examples{

a <- matrix(rnorm(9), 3, 3) 
b <- matrix(rnorm(9), 3, 3) 
# Hello World
c <- mat_mult(a, b)
c
}
\keyword{matrix}
\keyword{multiplication}
