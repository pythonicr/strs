#' Swap Uppercase and Lowercase Characters in a String
#'
#' `strs_swapcase` returns a copy of the string with uppercase characters convert
#' to lowercase and visa-versa. It is similar to Python's `str.swapcase()`.
#'
#' @param string A character vector where each element is a string.
#' @return A character vector of the same length as `string`, with specified
#' uppercase characters converted to lowercase and visa-versa.
#' @examples
#' strs_swapcase("Hello World")
#' @seealso [Python str.swapcase() documentation](https://docs.python.org/3/library/stdtypes.html#str.swapcase)
#' @export
strs_swapcase <- function(string) {
  stringi::stri_trans_general(
    string,
    "( [\\p{Ll}] )? ( [\\p{Lu}] )? > &Any-Upper($1) &Any-Lower($2) ;",
    rules = TRUE
  )
}
