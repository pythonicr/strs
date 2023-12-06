#' Check if String is in Title Case
#'
#' `strs_istitle` checks whether each element of a character vector is title
#' case. This is similar to Python's `str.istitle` method.
#'
#' @param string A character vector where each element is a string to be
#' checked.
#' @return A logical vector of the same length as `string`, indicating whether
#' each element is in title case.
#' @examples
#' strs_istitle("This Is Title Case")
#' strs_istitle("not title case")
#' strs_istitle("123 Another Example")
#' @seealso [Python str.istitle() documentation](https://docs.python.org/3/library/stdtypes.html#str.istitle)
#' @export
strs_istitle <- function(string) {
  !stringi::stri_detect_regex(
    string,
    pattern = "\\b\\p{Ll}"
  )
}
