test_that("strs_isalpha works", {
  expect_true(strs_isalpha("letters"))
  expect_false(strs_isalpha("123"))
})
