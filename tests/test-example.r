test_that("This is an example test", {
  a <- 2
  b <- 10
  expect_equal(a * b, 20)
})

test_that("Check the gdpPercap coefficient", {
  gdpPercap_coef <- as.numeric(model$coefficients[2])
  expect_equal(gdpPercap_coef, 0.00076, tolerance = 0.001)
})

test_that("Check the number of observations", {
  n_obs <- nobs(model)
  expect_equal(n_obs, 1704)
})

expect_unique(data = data, c(year, country))

expect_range(data = data, gdpPercap, 0, 1e6)