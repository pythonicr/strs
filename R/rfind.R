#' Find the Last Occurrence of a Substring in a String
#'
#' `strs_rfind` locates the last occurrence of a specified substring within each
#' element of a character vector. It is similar to Python's `str.rfind()`
#' method.
#'
#' @param string A character vector where each element is a string to search.
#' @param substring The substring to find within each element of `string`.
#' @return An integer vector of the same length as `string`, with each element
#' representing the starting position of the last occurrence of `substring` in
#' the corresponding element of `string`. If the substring is not found, the
#' function returns NA for that element.
#' @examples
#' strs_rfind("hello world", "o")
#' strs_rfind("hello world", "x") # not found
#' @seealso [Python str.rfind() documentation](https://docs.python.org/3/library/stdtypes.html#str.rfind)
#' @export
strs_rfind <- function(string, substring) {
  as.integer(stringi::stri_locate_last_fixed(string, substring)[, "start"])
}
