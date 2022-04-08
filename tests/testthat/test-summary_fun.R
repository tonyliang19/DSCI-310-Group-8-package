# Helpers
df <- mtcars
empty_df  <- data.frame(x = numeric(0), y = numeric(0))
empty_df_output <- data.frame(mean = numeric(0))
cols <- colnames(mtcars)
mean_output <- data.frame(mpg = 20.09, cyl = 6.19, disp = 230.72, hp = 146.69,
                          drat = 3.6, wt = 3.22, qsec = 17.85, vs = 0.44,
                          am = 0.41, gear = 3.69, carb = 2.81)
sd_output <- data.frame(mpg = 6.03, cyl = 1.79, disp = 123.94, hp = 68.56,
                          drat = 0.53, wt = 0.98, qsec = 1.79, vs = 0.5,
                          am = 0.5, gear = 0.74, carb = 1.62)


# Tests
test_that("df should be a dataframe", {
  expect_error(summary_fun(0, mean))
  expect_error(summary_fun("null", sd))
})

test_that("fun should be a function only", {
  expect_error(summary_fun(df, 0))
  expect_error(summary_fun(df, "empty"))
  expect_error(summary_fun(df, seq(1,10)))
  expect_error(summary_fun(df, c("a","b")))
})

test_that("`summary_fun` returns a data frame", {
  expect_s3_class(summary_fun(df,mean), "data.frame")
  expect_s3_class(summary_fun(df, sd), "data.frame")
  expect_s3_class(summary_fun(df, var), "data.frame")
  expect_s3_class(summary_fun(df,mean), "data.frame")
})

test_that("`summary_fun` should be a single statistic of the variable", {
  expect_equal(colnames(summary_fun(df, mean)) , cols)
  expect_equal(colnames(summary_fun(df, sd)) , cols)
})

test_that("`summary_fun` should return an empty data frame, if input is an empty data frame", {
  expect_equal(summary_fun(empty_df, mean), empty_df_output)
})

test_that("`summary_fun` should correctly calculate fun implemented in base R",{
  expect_equal(data.frame(summary_fun(df, mean)), mean_output)
  expect_equal(data.frame(summary_fun(df, sd)), sd_output)
})
