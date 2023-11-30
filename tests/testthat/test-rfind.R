test_that("strs_rfind works", {
  expect_equal(strs_rfind("words", "r"), 3)
  expect_equal(strs_rfind(c("words", "groovy"), "r"), c(3, 2))
  expect_equal(strs_rfind(c("words", "groovy", "z"), "r"), c(3, 2, NA_integer_))
  expect_equal(strs_rfind("wordswords", "r"), 8)
})
