#' Check if String is in Lowercase
#'
#' `strs_islower` checks whether each element of a character vector is in
#' lowercase. It is similar to Python's `str.islower()` method.
#'
#' @param string A character vector to be checked.
#' @return A logical vector of the same length as `string`, indicating whether
#' each element is entirely in lowercase.
#' @examples
#' strs_islower("hello")
#' strs_islower("Hello")
#' @seealso [Python str.islower() documentation](https://docs.python.org/3/library/stdtypes.html#str.islower)
#' @export
strs_islower <- function(string) {
  stringi::stri_detect_regex(
    string,
    pattern = "^\\P{CASED}*\\p{Ll}+\\P{CASED}*$"
  )
}
