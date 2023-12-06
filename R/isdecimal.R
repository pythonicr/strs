#' Check if String Contains Only Decimal Characters
#'
#' `strs_isdecimal` checks whether each element of a character vector contains
#' only decimal characters. It is similar to Python's `str.isdecimal()` method.
#'
#' @param string A character vector to be checked.
#' @return A logical vector of the same length as `string`, indicating whether
#' each element contains only decimal characters.
#' @examples
#' strs_isdecimal("12345")
#' strs_isdecimal("123.45") # FALSE
#' @seealso [Python str.isdecimal() documentation](https://docs.python.org/3/library/stdtypes.html#str.isdecimal)
#' @export
strs_isdecimal <- function(string) {
  stringi::stri_detect_regex(
    string,
    pattern = "^\\p{Nd}+$"
  )
}
