#' Find the First Occurrence of a Substring in a String
#'
#' `strs_find` locates the first occurrence of a specified substring within each
#' element of a character vector. This function is analogous to Python's
#' `str.find()` method.
#'
#' @param string A character vector where each element is a string to search.
#' @param substring The substring to find within each element of `string`.
#' @return An integer vector of the same length as `string`, with each element
#' representing the starting position of the first occurrence of `substring` in
#' the corresponding element of `string`. If the substring is not found, the
#' function returns NA for that element.
#' @examples
#' strs_find("hello world", "world")
#' strs_find("hello world", "x")
#' @export
#' @seealso [Python str.find() documentation](URL_PLACEHOLDER)
strs_find <- function(string, substring) {
  as.integer(stringi::stri_locate_first_fixed(string, substring)[, "start"])
}
