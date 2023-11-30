test_that("strs_islower works", {
  expect_true(strs_islower("words"))
  expect_true(strs_islower("hello "))
  expect_false(strs_islower("WORDS"))
  expect_false(strs_islower(".:'"))
})
