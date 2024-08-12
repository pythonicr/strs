#' Remove a prefix from a string
#'
#' `strs_removeprefix` removes a specified prefix from the start of each element
#' of a character vector. It is similar to Python's `str.removeprefix()` method.
#'
#' @param string A character vector where each element is a string from which to
#' remove the prefix.
#' @param prefix The prefix to remove.
#' @return A character vector of the same length as `string`, with the `prefix`
#' removed from each element.
#' @examples
#' strs_removeprefix("testString", "test")
#' strs_removeprefix("hello world", "hello")
#' @seealso [Python str.removeprefix() documentation](https://docs.python.org/3/library/stdtypes.html#str.removeprefix)
#' @export
strs_removeprefix <- function(string, prefix) {
  stringi::stri_replace_first_regex(
    string, paste0("^\\Q", prefix, "\\E"), ""
  )
}
