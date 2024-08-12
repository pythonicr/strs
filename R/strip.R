#' Strip characters from both ends of a string
#'
#' `strs_strip` removes leading and trailing characters (spaces by default) from
#' each element of a character vector. It is similar to Python's `str.strip()`
#' method.
#'
#' @param string A character vector where each element is a string to be
#' stripped.
#' @param chars An optional string of characters to be removed from both ends of
#' each element. If NULL, whitespace is removed.
#' @return A character vector of the same length as `string`, with specified
#' characters removed from both ends of each element.
#' @examples
#' strs_strip("    hello world    ")
#' strs_strip("xxxyhello worldyyy", chars = "xy")
#' @seealso [Python str.strip() documentation](https://docs.python.org/3/library/stdtypes.html#str.strip)
#' @export
strs_strip <- function(string, chars = NULL) {
  .str_strip(string, side = "both", chars = chars)
}
