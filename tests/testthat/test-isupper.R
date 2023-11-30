test_that("strs_isupper works", {
  expect_true(strs_isupper("WORDS"))
  expect_true(strs_isupper("WORDS "))
  expect_false(strs_isupper("words"))
  expect_false(strs_isupper(".:'"))
})
