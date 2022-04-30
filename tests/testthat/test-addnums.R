test_that("additions works", {

  correct_result <- 15

  test_input <- c(5,7,3)

  result <- additions(test_input)

  expect_equal(result, correct_result)
})

test_that("addToStrs works", {

  correct_result <- "Five-five-Six-ten-eleven"

  test_input <- c("Five", 5, "Six", 10, 11)

  result <- addToStrs(test_input, delim = "-")

  expect_equal(result, correct_result)

})

test_that("addnums works", {

  correct_result <- "Seven-five-Six-Eleven-ten-eleven"

  test_input <- c("Seven", 5, "Six", "Eleven", 10, 11)

  result <- addnums(test_input, type = "string", delim = "-")

  expect_equal(result, correct_result)

})

test_that("addnums works", {

  correct_result <- "ERROR!! Please Check Your Inputs"

  test_input <- c("Seven", 5, "Six", "Eleven", 10, 11)

  result <- addnums(test_input, type = "numeric", delim = "-")

  expect_equal(result, correct_result)

})
