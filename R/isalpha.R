#' Check if String Contains Only Alphabetical Characters
#'
#' `strs_isalpha` checks whether each element of a character vector contains
#' only alphabetical characters. It is similar to Python's `str.isalpha()`
#' method.
#'
#' @param string A character vector to be checked.
#' @return A logical vector of the same length as `string`, indicating whether
#' each element contains only alphabetical characters.
#' @examples
#' strs_isalpha("hello")
#' strs_isalpha("hello123")
#' @seealso [Python str.isalpha() documentation](https://docs.python.org/3/library/stdtypes.html#str.isalpha)
#' @export
strs_isalpha <- function(string) {
  stringi::stri_detect_regex(
    string,
    pattern = "^\\p{L}+$"
  )
}
