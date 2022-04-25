test_that("plusfive", {
  obs<-plusfive(4)
  val<-4+5
  expect_equal(obs, val)
})

test_that("strfive works", {
  obs<-strfive("give","-")
  val<- "give-five"
  expect_equal(obs, val)
})

test_that("addfive works", {
  obs<-addfive(5)
  val<-10
  expect_equal(obs, val)
})
