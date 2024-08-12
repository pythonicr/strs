#' Left-justify string in a field of a given width
#'
#' `strs_ljust` left-justifies each element of a character vector in a field of
#' a specified width. It is similar to Python's `str.ljust()` method.
#'
#' @param string A character vector where each element is a string to be
#' left-justified.
#' @param width The total width of the field in which the string is to be
#' left-justified.
#' @param fillchar A character used for padding on the right.
#' @return A character vector of the same length as `string`, with each element
#' left-justified in a field of the specified width.
#' @examples
#' strs_ljust("hello", 10)
#' strs_ljust("world", 10, "*")
#' @seealso [Python str.ljust() documentation](https://docs.python.org/3/library/stdtypes.html#str.ljust)
#' @export
strs_ljust <- function(string, width, fillchar = " ") {
  stringi::stri_pad_left(string, width, pad = fillchar)
}
