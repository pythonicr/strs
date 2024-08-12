#' Check if string contains only numeric characters
#'
#' `strs_isnumeric` checks whether each element of a character vector contains
#' only numeric characters. It is similar to Python's `str.isnumeric()` method.
#'
#' @param string A character vector to be checked.
#' @return A logical vector of the same length as `string`, indicating whether
#' each element contains only numeric characters.
#' @examples
#' strs_isnumeric("12345")
#' strs_isnumeric("123a") # contains a non-numeric character
#' @seealso [Python str.isnumeric() documentation](https://docs.python.org/3/library/stdtypes.html#str.isnumeric)
#' @export
strs_isnumeric <- function(string) {
  stringi::stri_detect_regex(
    string,
    pattern = "^[\\p{Numeric_Type=Digit}\\p{Numeric_Type=Decimal}\\p{Numeric_Type=Numeric}]+$"
  )
}
