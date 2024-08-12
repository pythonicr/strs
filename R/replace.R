#' Replace substring in a string
#'
#' `strs_replace` replaces all occurrences of a specified substring in each
#' element of a character vector. It is similar to Python's `str.replace()`
#' method.
#'
#' @param string A character vector where each element is a string in which to
#' replace `substring`.
#' @param substring The substring to be replaced.
#' @param replacement The string to replace `substring` with.
#' @return A character vector of the same length as `string`, with `substring`
#' replaced by `replacement`.
#' @examples
#' strs_replace("hello world", "world", "there")
#' strs_replace("banana", "na", "mo")
#' @seealso [Python str.replace() documentation](https://docs.python.org/3/library/stdtypes.html#str.replace)
#' @export
strs_replace <- function(string, substring, replacement) {
  stringi::stri_replace_all_fixed(string, substring, replacement)
}
