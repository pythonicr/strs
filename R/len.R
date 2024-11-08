#' Get the lengths of each string
#'
#' `strs_len` returns the number of characters in `string`. It is similar to
#' Python's `str.__len__()`.
#'
#' @param string A character vector of strings.
#' @return A numeric vector where each element corresponds to the number of characters.
#' @examples
#' strs_len(c("hello", "world"))
#' @seealso [Python str.__len__() documentation](https://docs.python.org/3/library/stdtypes.html#str.__len__)
#' @export
strs_len <- function(string) {
  stringi::stri_length(string)
}
