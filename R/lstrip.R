#' Left strip characters from a string
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
  if (is.null(chars)) {
    return(stringi::stri_trim_left(string))
  }
  chars <- stringi::stri_flatten(chars)
  pattern <- stringi::stri_join("^[", chars, "]+")
  stringi::stri_replace_all_regex(string, pattern, "")
}
