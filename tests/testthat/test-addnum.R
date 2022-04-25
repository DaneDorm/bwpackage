test_that("addition works", {
 obs<-addition(4,3)
 val<-7
 expect_equal(obs,val)
})

test_that("addToStr works", {
  obs<-addToStr("high",5,",")
  val<-"high,five"
  expect_equal(obs,val)
})

test_that("addnum works", {
  obs<-addnum(5,6,type="numeric")
  val<-11
  expect_equal(obs,val)
})
