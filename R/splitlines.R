#' Split String into Lines
#'
#' `strs_splitlines` splits each element of a character vector into separate
#' lines. It is similar to Python's `str.splitlines()` method.
#'
#' @param string A character vector to be split into lines.
#' @param keepends A boolean indicating whether to retain line end characters.
#' @return A list of character vectors, with each vector containing lines from
#' the corresponding element of `string`.
#' @examples
#' strs_splitlines("hello\nworld\n")
#' strs_splitlines("line1\r\nline2\n", keepends = TRUE)
#' @seealso [Python str.splitlines() documentation](https://docs.python.org/3/library/stdtypes.html#str.splitlines)
#' @export
strs_splitlines <- function(string, keepends = FALSE) {
  stringi::stri_split_lines(string, omit_empty = !keepends)
}
