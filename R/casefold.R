#' Perform case folding on strings
#'
#' `strs_casefold` is used to perform case folding on each element of a
#' character vector. This function is particularly useful for case-insensitive
#' string matching and is similar to Python's `str.casefold()` method.
#'
#' @param string A character vector where each element is a string to be
#' case-folded.
#' @return A character vector of the same length as `string`, where each element
#' has been case-folded.
#' @examples
#' strs_casefold("HELLO World")
#' strs_casefold("Äpfel")
#' @export
#' @seealso
#' [Python str.casefold() documentation](https://docs.python.org/3/library/stdtypes.html#str.casefold)
strs_casefold <- function(string) {
  stringi::stri_trans_casefold(string)
}
