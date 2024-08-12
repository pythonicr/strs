#' Convert string to uppercase
#'
#' `strs_upper` converts each element of a character vector to uppercase, based
#' on the specified locale. It is similar to Python's `str.upper()` method.
#'
#' @param string A character vector to be converted to uppercase.
#' @param locale A character string representing the locale to be used for the
#' conversion.
#' @return A character vector of the same length as `string`, with each element
#' converted to uppercase.
#' @examples
#' strs_upper("hello world")
#' strs_upper("äpfel", locale = "de")
#' @seealso [Python str.upper() documentation](https://docs.python.org/3/library/stdtypes.html#str.upper)
#' @export
strs_upper <- function(string, locale = "en") {
  stringi::stri_trans_toupper(string, locale)
}
