#' Left Strip Characters from a String
#'
#' `strs_lstrip` removes leading characters (spaces by default) from each
#' element of a character vector. It is similar to Python's `str.lstrip()`
#' method.
#'
#' @param string A character vector where each element is a string to be
#' left-stripped.
#' @param chars An optional string of characters to be removed from the
#' beginning of each element. If NULL, whitespace is removed.
#' @return A character vector of the same length as `string`, with specified
#' characters removed from the beginning of each element.
#' @examples
#' strs_lstrip("    hello world")
#' strs_lstrip("xxxyhello world", chars = "xy")
#' @seealso [Python str.lstrip() documentation](https://docs.python.org/3/library/stdtypes.html#str.lstrip)
#' @export
strs_lstrip <- function(string, chars = NULL) {
  .str_strip(string, side = "left", chars = chars)
}
