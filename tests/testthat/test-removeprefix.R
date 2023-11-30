test_that("strs_removeprefix works", {
  expect_equal(strs_removeprefix("words", "wo"), "rds")
  expect_equal(strs_removeprefix("words", "rds"), "words")
  expect_equal(strs_removeprefix(rep("words", 2), "wo"), rep("rds", 2))
})
