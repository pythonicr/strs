#' Check if String Starts With a Specified Prefix
#'
#' `strs_startswith` determines whether each element of a character vector
#' starts with a specified prefix. It is similar to Python's `str.startswith()`
#' method.
#'
#' @param string A character vector where each element is a string to be
#' checked.
#' @param prefix The prefix to check for at the start of each element of
#' `string`.
#' @return A logical vector of the same length as `string`, with each element
#' indicating whether the corresponding element of `string` starts with
#' `prefix`.
#' @examples
#' strs_startswith("hello world", "hello")
#' strs_startswith(c("test", "hello", "world"), "te")
#' @seealso [Python str.startswith() documentation](https://docs.python.org/3/library/stdtypes.html#str.startswith)
#' @export
strs_startswith <- function(string, prefix) {
  stringi::stri_startswith_fixed(string, prefix)
}
