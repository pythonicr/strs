test_that("strs_rstrip works for chars = NULL", {
  expect_equal(strs_rstrip("     test     "), "     test")
  expect_equal(strs_rstrip("test     "), "test")
  expect_equal(strs_rstrip("     test"), "     test")
  expect_equal(strs_rstrip("rmftestrmf", c("r", "m", "f")), "rmftest")
  expect_equal(strs_rstrip("rmftestrmf", "rmf"), "rmftest")
})
