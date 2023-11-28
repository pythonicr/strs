test_that("strs_slice works", {
  expect_equal(strs_slice("hello", start = -1L), "o")
  expect_equal(strs_slice("hello", start = -1L, stop = 1L), "")
  expect_equal(strs_slice("hello", start = -2L), "lo")
})


test_that("strs_contains works", {
  expect_true(strs_contains("words", "rds"))
  expect_false(strs_contains("words", "kds"))
})




test_that("strs_endswith works", {
  expect_true(strs_endswith("words", "s"))
  expect_false(strs_endswith("words", "w"))
})




test_that("strs_find works", {
  expect_equal(strs_find("words", "r"), 3)
  expect_equal(strs_find(c("words", "groovy"), "r"), c(3, 2))
  expect_equal(strs_find(c("words", "groovy", "z"), "r"), c(3, 2, NA_integer_))
})




test_that("strs_isalnum works", {
  expect_true(strs_isalnum("word123"))
  expect_false(strs_isalnum("word123::"))
})




test_that("strs_isalpha works", {
  expect_true(strs_isalpha("letters"))
  expect_false(strs_isalpha("123"))
})




test_that("strs_isdigit works", {
  expect_true(strs_isdigit("3444"))
  expect_false(strs_isdigit("12.77"))
})




test_that("strs_isgraph works", {
  expect_true(strs_isgraph("word123::"))
  expect_false(strs_isgraph("\n"))
})




test_that("strs_islower works", {
  expect_true(strs_islower("words"))
  expect_false(strs_islower("WORDS"))
  expect_false(strs_islower(".:'"))
})




test_that("strs_ispunct works", {
  expect_true(strs_ispunct(":,."))
  expect_false(strs_ispunct("word"))
})




test_that("strs_isspace works", {
  expect_true(strs_isspace(" "))
  expect_false(strs_isspace("fff"))
})




test_that("strs_isupper works", {
  expect_true(strs_isupper("WORDS"))
  expect_false(strs_isupper("words"))
  expect_false(strs_isupper(".:'"))
})




test_that("strs_lstrip works for chars = NULL", {
  expect_equal(strs_lstrip("     test     "), "test     ")
  expect_equal(strs_lstrip("test     "), "test     ")
  expect_equal(strs_lstrip("     test"), "test")
})

test_that("strs_lstrip works for chars = c('r', 'm', 'f') | 'rmf'", {
  expect_equal(strs_lstrip("rmftestrmf", c("r", "m", "f")), "testrmf")
  expect_equal(strs_lstrip("rmftestrmf", "rmf"), "testrmf")
})




test_that("strs_removeprefix works", {
  expect_equal(strs_removeprefix("words", "wo"), "rds")
  expect_equal(strs_removeprefix("words", "rds"), "words")
  expect_equal(strs_removeprefix(rep("words", 2), "wo"), rep("rds", 2))
})




test_that("strs_removesuffix works", {
  expect_equal(strs_removesuffix("words", "rds"), "wo")
  expect_equal(strs_removesuffix("words", "wo"), "words")
  expect_equal(strs_removesuffix(rep("words", 2), "rds"), rep("wo", 2))
})




test_that("strs_rfind works", {
  expect_equal(strs_rfind("words", "r"), 3)
  expect_equal(strs_rfind(c("words", "groovy"), "r"), c(3, 2))
  expect_equal(strs_rfind(c("words", "groovy", "z"), "r"), c(3, 2, NA_integer_))
  expect_equal(strs_rfind("wordswords", "r"), 8)
})




test_that("strs_rstrip works for chars = NULL", {
  expect_equal(strs_rstrip("     test     "), "     test")
  expect_equal(strs_rstrip("test     "), "test")
  expect_equal(strs_rstrip("     test"), "     test")
})

test_that("strs_rstrip works for chars = c('r', 'm', 'f') | 'rmf'", {
  expect_equal(strs_rstrip("rmftestrmf", c("r", "m", "f")), "rmftest")
  expect_equal(strs_rstrip("rmftestrmf", "rmf"), "rmftest")
})




test_that("strs_startswith works", {
  expect_true(strs_startswith("words", "w"))
  expect_false(strs_startswith("words", "s"))
})




test_that("strs_strip works for chars = NULL", {
  expect_equal(strs_strip("     test     "), "test")
  expect_equal(strs_strip("test     "), "test")
  expect_equal(strs_strip("     test"), "test")
})

test_that("strs_strip works for chars = c('r', 'm', 'f') | 'rmf'", {
  expect_equal(strs_strip("rmftest", c("r", "m", "f")), "test")
  expect_equal(strs_strip("rmftest", "rmf"), "test")
})
