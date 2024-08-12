#' Check if string ends with a specified suffix
#'
#' `strs_endswith` determines whether each element of a character vector ends
#' with a specified suffix. This function is similar to Python's
#' `str.endswith()` method.
#'
#' @param string A character vector where each element is a string to be
#' checked.
#' @param suffix The suffix to check for at the end of each element of `string`.
#' @return A logical vector of the same length as `string`, with each element
#' indicating whether the corresponding element of `string` ends with `suffix`.
#' @examples
#' strs_endswith("hello world", "world")
#' strs_endswith(c("test", "hello", "world"), "ld")
#' @export
#' @seealso [Python str.endswith() documentation](https://docs.python.org/3/library/stdtypes.html#str.endswith)
strs_endswith <- function(string, suffix) {
  stringi::stri_endswith_fixed(string, suffix)
}
