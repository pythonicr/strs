#' @title strs_capitalize
#' @description Convert the first character of a string to uppercase and the
#' remaining characters to lowercase.
#' @inheritParams stringr::str_to_sentence
#' @export
strs_capitalize <- function(string, locale = "en") {
  return(stringr::str_to_sentence(string, locale))
}