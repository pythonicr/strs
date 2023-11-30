#' @title strs_contains
#' @description Check whether a string contains the substring.
#' @inheritParams stringr::str_detect
#' @export
strs_contains <- function(string, substring) {
  stringi::stri_detect_fixed(string, substring)
}
