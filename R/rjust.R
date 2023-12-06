#' Right-justify String in a Field of a Given Width
#'
#' `strs_rjust` right-justifies each element of a character vector in a field of
#' a specified width. It is similar to Python's `str.rjust()` method.
#'
#' @param string A character vector where each element is a string to be
#' right-justified.
#' @param width The total width of the field in which the string is to be
#' right-justified.
#' @param fillchar A character used for padding on the left.
#' @return A character vector of the same length as `string`, with each element
#' right-justified in a field of the specified width.
#' @examples
#' strs_rjust("hello", 10)
#' strs_rjust("world", 10, "*")
#' @seealso [Python str.rjust() documentation](https://docs.python.org/3/library/stdtypes.html#str.rjust)
#' @export
strs_rjust <- function(string, width, fillchar = " ") {
  stringi::stri_pad_right(string, width, pad = fillchar)
}
