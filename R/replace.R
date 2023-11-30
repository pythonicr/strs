#' @title strs_replace
#' @description Replace substrings in a string.
#' @inheritParams stringr::str_replace_all
#' @export
strs_replace <- function(string, pattern, replacement) {
  stringr::str_replace_all(string, pattern, replacement)
}
