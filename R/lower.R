#' Convert string to lowercase
#'
#' `strs_lower` converts each element of a character vector to lowercase, based
#' on the specified locale. It is similar to Python's `str.lower()` method.
#'
#' @param string A character vector to be converted to lowercase.
#' @param locale A character string representing the locale to be used for the
#' conversion.
#' @return A character vector of the same length as `string`, with each element
#' converted to lowercase.
#' @examples
#' strs_lower("HELLO WORLD")
#' strs_lower("Äpfel", locale = "de")
#' @seealso [Python str.lower() documentation](https://docs.python.org/3/library/stdtypes.html#str.lower)
#' @export
strs_lower <- function(string, locale = "en") {
  stringi::stri_trans_tolower(string, locale)
}
