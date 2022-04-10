# Test inputs
wrong_df <- seq(1:10)
wrong_x <- data.frame(x = "aaa", y = 1)
wrong_y <- data.frame(x = 1, y = "aaa")


test_that("df should be a data frame or data frame extension",{
  expect_error(visualize_vars(wrong_df, 1,2))  
})

test_that("x and y should be of type numeric, x is not numeric",{
  expect_error(visualize_vars(wrong_x, x,y))  
})

test_that("x and y should be of type numeric, y is not numeric",{
  expect_error(visualize_vars(wrong_y, x,y))  
})


test_that("Var does not exist", {
  expect_error(visualize_vars.R(mtcars, dne))
})

test_that("`visualize_vars` returns a gg", {
  expect_s3_class(visualize_vars(mtcars, mpg, disp), class = "gg")
})

