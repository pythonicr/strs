#' Split String into Substrings
#'
#' `strs_split` splits each element of a character vector into substrings based
#' on a separator. It is similar to Python's `str.split()` method.
#'
#' @param string A character vector to split.
#' @param sep The separator on which to split the string.
#' @param maxsplit The maximum number of splits to perform. If -1, all possible
#' splits are performed.
#' @return A list of character vectors, with each vector containing the split
#' substrings from the corresponding element of `string`.
#' @examples
#' strs_split("hello world", " ")
#' strs_split("one,two,three", ",", maxsplit = 1)
#' @seealso [Python str.split() documentation](https://docs.python.org/3/library/stdtypes.html#str.split)
#' @export
strs_split <- function(string, sep = " ", maxsplit = -1L) {
  maxsplit <- if (maxsplit < -1L) -1L else maxsplit
  maxsplit <- if (maxsplit > 0L) maxsplit + 1L else maxsplit
  stringi::stri_split_fixed(string, sep, n = maxsplit)
}
