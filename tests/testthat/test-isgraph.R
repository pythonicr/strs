test_that("strs_isgraph works", {
  expect_true(strs_isgraph("word123::"))
  expect_false(strs_isgraph("\n"))
})
