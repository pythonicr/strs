test_that("strs_strip works for chars = NULL", {
  expect_equal(strs_strip("     test     "), "test")
  expect_equal(strs_strip("test     "), "test")
  expect_equal(strs_strip("     test"), "test")
  expect_equal(strs_strip("rmftest", c("r", "m", "f")), "test")
  expect_equal(strs_strip("rmftest", "rmf"), "test")
})
