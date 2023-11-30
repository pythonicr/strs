test_that("strs_contains works", {
  expect_true(strs_contains("words", "rds"))
  expect_false(strs_contains("words", "kds"))
})
