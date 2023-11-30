test_that("strs_endswith works", {
  expect_true(strs_endswith("words", "s"))
  expect_false(strs_endswith("words", "w"))
})
