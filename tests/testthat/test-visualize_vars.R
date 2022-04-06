test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("Var does not exist", {
  expect_error(visualize_vars.R(mtcars, dne))
})

test_that("`visualize_vars` returns a gg", {
  expect_s3_class(visualize_vars(mtcars, mpg, disp), class = "gg")
})

