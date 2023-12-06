#' Check if String is Alphanumeric
#'
#' `strs_isalnum` checks whether each element of a character vector is
#' alphanumeric. This means that the function tests if all characters in the
#' string are either letters or digits. It is similar to Python's
#' `str.isalnum()` method.
#'
#' @param string A character vector to be checked.
#' @return A logical vector of the same length as `string`, with each element
#' indicating whether the corresponding element of `string` is completely
#' alphanumeric.
#' @examples
#' strs_isalnum("hello123")
#' strs_isalnum("hello world")
#' strs_isalnum("12345")
#' @seealso [Python str.isalnum() documentation](https://docs.python.org/3/library/stdtypes.html#str.isalnum)
#' @export
strs_isalnum <- function(string) {
  stringi::stri_detect_regex(
    string,
    pattern = "^[\\p{L}\\p{Numeric_Type=Digit}\\p{Numeric_Type=Decimal}\\p{Numeric_Type=Numeric}\\p{Nd}]+$"
  )
}
