#' Right strip characters from a string
#'
#' `strs_rstrip` removes trailing characters (spaces by default) from each
#' element of a character vector. It is similar to Python's `str.rstrip()`
#' method.
#'
#' @param string A character vector where each element is a string to be
#' right-stripped.
#' @param chars An optional string of characters to be removed from the end of
#' each element. If NULL, whitespace is removed.
#' @return A character vector of the same length as `string`, with specified
#' characters removed from the end of each element.
#' @examples
#' strs_rstrip("hello world    ")
#' strs_rstrip("hello worldxxx", chars = "x")
#' @seealso [Python str.rstrip() documentation](https://docs.python.org/3/library/stdtypes.html#str.rstrip)
#' @export
strs_rstrip <- function(string, chars = NULL) {
  if (is.null(chars)) {
    return(stringi::stri_trim_right(string))
  }
  chars <- stringi::stri_flatten(chars)
  pattern <- stringi::stri_join("[", chars, "]+$")
  stringi::stri_replace_all_regex(string, pattern, "")
}
