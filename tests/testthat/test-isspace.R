test_that("strs_isspace works", {
  expect_true(strs_isspace(" "))
  expect_false(strs_isspace("fff"))
})
