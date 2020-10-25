#include <Rcpp.h>

using namespace Rcpp;

//' Vector Sum
//' 
//' This function sums a vector
//'
//' @param x A numeric vector
//' @export
// [[Rcpp::export]]
double vectorSum(NumericVector x) {
   return std::accumulate(x.begin(), x.end(), 0.0);
}
