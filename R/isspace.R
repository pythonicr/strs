#' Check if string contains only whitespace characters
#'
#' `strs_isspace` checks whether each element of a character vector contains
#' only whitespace characters. It is similar to Python's `str.isspace()` method.
#'
#' @param string A character vector to be checked.
#' @return A logical vector of the same length as `string`, indicating whether
#' each element contains only whitespace characters.
#' @examples
#' strs_isspace("    ")
#' strs_isspace("hello world")
#' @seealso [Python str.isspace() documentation](https://docs.python.org/3/library/stdtypes.html#str.isspace)
#' @export
strs_isspace <- function(string) {
  stringi::stri_detect_regex(
    string,
    pattern = "^\\p{WHITE_SPACE}+$"
  )
}
