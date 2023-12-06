#' Remove a Suffix from a String
#'
#' `strs_removesuffix` removes a specified suffix from the end of each element
#' of a character vector. It is similar to Python's `str.removesuffix()` method.
#'
#' @param string A character vector where each element is a string from which to
#' remove the suffix.
#' @param suffix The suffix to remove.
#' @return A character vector of the same length as `string`, with the `suffix`
#' removed from each element.
#' @examples
#' strs_removesuffix("StringTest", "Test")
#' strs_removesuffix("hello world", "world")
#' @seealso [Python str.removesuffix() documentation](https://docs.python.org/3/library/stdtypes.html#str.removesuffix)
#' @export
strs_removesuffix <- function(string, suffix) {
  stringi::stri_replace_first_regex(
    string, paste0("\\Q", suffix, "\\E$"), ""
  )
}
