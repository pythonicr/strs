test_that("strs_slice works", {
  expect_equal(strs_slice("hello", start = -1L), "o")
  expect_equal(strs_slice("hello", start = -1L, stop = 1L), "")
  expect_equal(strs_slice("hello", start = -2L), "lo")
})
