test_that("strs_startswith works", {
  expect_true(strs_startswith("words", "w"))
  expect_false(strs_startswith("words", "s"))
})
