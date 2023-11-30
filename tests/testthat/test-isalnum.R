test_that("strs_isalnum works", {
  expect_true(strs_isalnum("word123"))
  expect_false(strs_isalnum("word123::"))
})
