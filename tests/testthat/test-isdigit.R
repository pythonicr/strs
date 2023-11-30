test_that("strs_isdigit works", {
  expect_true(strs_isdigit("3444"))
  expect_false(strs_isdigit("12.77"))
})
