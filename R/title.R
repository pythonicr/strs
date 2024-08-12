#' Convert string to title case
#'
#' `strs_title` converts each element of a character vector to title case, based
#' on the specified locale. It is similar to Python's `str.title()` method.
#'
#' @param string A character vector to be converted to title case.
#' @param locale A character string representing the locale to be used for the
#' conversion.
#' @return A character vector of the same length as `string`, with each element
#' converted to title case.
#' @examples
#' strs_title("hello world")
#' strs_title("guten tag", locale = "de")
#' @seealso [Python str.title() documentation](https://docs.python.org/3/library/stdtypes.html#str.title)
#' @export
strs_title <- function(string, locale = "en") {
  stringi::stri_trans_totitle(
    string,
    opts_brkiter = stringi::stri_opts_brkiter(locale = locale)
  )
}
