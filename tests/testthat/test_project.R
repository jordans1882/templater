testthat::context("lints")
library(lintr)
testthat::test_that("Package Style", {
  expect_lint_free(linters = with_defaults(
    line_length_linter(120)
    ))
})
