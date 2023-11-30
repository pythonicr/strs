test_that("strs_find works", {
  expect_equal(strs_find("words", "r"), 3)
  expect_equal(strs_find(c("words", "groovy"), "r"), c(3, 2))
  expect_equal(strs_find(c("words", "groovy", "z"), "r"), c(3, 2, NA_integer_))
})
