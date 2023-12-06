#' Check if String Contains Only Digits
#'
#' `strs_isdigit` checks whether each element of a character vector contains
#' only digits. It is similar to Python's `str.isdigit()` method.
#'
#' @param string A character vector to be checked.
#' @return A logical vector of the same length as `string`, indicating whether
#' each element contains only digits.
#' @examples
#' strs_isdigit("12345")
#' strs_isdigit("123a")
#' @seealso [Python str.isdigit() documentation](https://docs.python.org/3/library/stdtypes.html#str.isdigit)
#' @export
strs_isdigit <- function(string) {
  stringi::stri_detect_regex(
    string,
    pattern = "^[\\p{Numeric_Type=Digit}\\p{Numeric_Type=Decimal}]+$"
  )
}
