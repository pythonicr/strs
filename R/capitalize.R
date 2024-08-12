#' Capitalize the first character of each sentence
#'
#' This function capitalizes the first character of each string in a given
#' string, based on the specified locale. This is similar to Python's
#' `str.capitalize()` method.
#'
#' @param string A character vector where each element is a string to be
#' capitalized.
#' @param locale A character string representing the locale to be used for
#' capitalization. Defaults to "en" (English). The locale affects the rules for
#' identifying sentences in the string.
#' @return A character vector of the same length as `string`, where each element
#' is the capitalized version of the corresponding element in `string`.
#' @examples
#' strs_capitalize("hello world")
#' @export
#' @seealso
#' [Python str.capitalize() documentation](https://docs.python.org/3/library/stdtypes.html#str.capitalize)
strs_capitalize <- function(string, locale = "en") {
  stringi::stri_trans_totitle(string, opts_brkiter = stringi::stri_opts_brkiter(
    type = "sentence",
    locale = locale
  ))
}
