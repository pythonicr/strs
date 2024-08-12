#' Check if string contains only ascii characters
#'
#' `strs_isascii` determines whether each element of a character vector contains
#' only ASCII characters. It is similar to Python's `str.isascii()` method.
#'
#' @param string A character vector to be checked.
#' @return A logical vector of the same length as `string`, indicating whether
#' each element contains only ASCII characters.
#' @examples
#' strs_isascii("hello")
#' strs_isascii("héllo")
#' @seealso [Python str.isascii() documentation](https://docs.python.org/3/library/stdtypes.html#str.isascii)
#' @export
strs_isascii <- function(string) {
  stringi::stri_enc_isascii(string)
}
