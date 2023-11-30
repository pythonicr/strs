#' @title strs_contains
#' @description Check whether a string contains the substring.
#' @inheritParams stringr::str_detect
#' @export
strs_contains <- function(string, substring) {
  substring <- stringr::fixed(substring)
  stringr::str_detect(string, substring, negate = FALSE)
}
