test_that("strs_removesuffix works", {
  expect_equal(strs_removesuffix("words", "rds"), "wo")
  expect_equal(strs_removesuffix("words", "wo"), "words")
  expect_equal(strs_removesuffix(rep("words", 2), "rds"), rep("wo", 2))
})
