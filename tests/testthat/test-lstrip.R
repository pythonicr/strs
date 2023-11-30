test_that("strs_lstrip works for chars = NULL", {
  expect_equal(strs_lstrip("     test     "), "test     ")
  expect_equal(strs_lstrip("test     "), "test     ")
  expect_equal(strs_lstrip("     test"), "test")

  expect_equal(strs_lstrip("rmftestrmf", c("r", "m", "f")), "testrmf")
  expect_equal(strs_lstrip("rmftestrmf", "rmf"), "testrmf")
})
