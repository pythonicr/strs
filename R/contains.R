#' Check if string contains a substring
#'
#' `strs_contains` checks whether each element of a character vector contains a
#' specified substring. This function mirrors the functionality of Python's
#' `str.__contains__()` method.
#'
#' @param string A character vector where each element is a string to be
#' checked.
#' @param substring The substring to search for within each element of `string`.
#' @return A logical vector of the same length as `string`, with each element
#' indicating whether the corresponding element of `string` contains
#' `substring`.
#' @examples
#' strs_contains("hello world", "world")
#' strs_contains(c("apple", "banana", "cherry"), "a")
#' @export
strs_contains <- function(string, substring) {
  stringi::stri_detect_fixed(string, substring)
}
