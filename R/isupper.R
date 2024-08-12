#' Check if string is in uppercase
#'
#' `strs_isupper` checks whether each element of a character vector is in
#' uppercase. It is similar to Python's `str.isupper()` method.
#'
#' @param string A character vector to be checked.
#' @return A logical vector of the same length as `string`, indicating whether
#' each element is entirely in uppercase.
#' @examples
#' strs_isupper("HELLO")
#' strs_isupper("Hello")
#' @seealso [Python str.isupper() documentation](https://docs.python.org/3/library/stdtypes.html#str.isupper)
#' @export
strs_isupper <- function(string) {
  stringi::stri_detect_regex(
    string,
    "^\\P{CASED}*\\p{Lu}+\\P{CASED}*$"
  )
}
