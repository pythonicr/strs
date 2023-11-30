test_that("strs_ispunct works", {
  expect_true(strs_ispunct(":,."))
  expect_false(strs_ispunct("word"))
})
