#' @title strs_replace
#' @description Replace substrings in a string.
#' @inheritParams stringr::str_replace_all
#' @export
strs_replace <- function(string, substring, replacement) {
  stringi::stri_replace_all_fixed(string, substring, replacement)
}
