test_that("additions works", {

  correct_result <- 15

  test_input <- c(5,7,3)

  result <- additions(test_input)

  expect_equal(result, correct_result)
})
