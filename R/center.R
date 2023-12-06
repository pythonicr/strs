#' Center a String in a Field of a Given Width
#'
#' `strs_center` centers each element of a character vector in a field of a
#' specified width. It pads the string on both sides with a specified character
#' (defaulting to a space). This is similar to Python's `str.center()` method.
#'
#' @param string A character vector where each element is a string to be
#' centered.
#' @param width The total width of the field in which the string is to be
#' centered.
#' @param fillchar A character used for padding. If not specified, defaults to a
#' space. Only the first character of `fillchar` is used if it is longer than
#' one character.
#' @return A character vector of the same length as `string`, where each element
#' has been centered in a field of the specified width.
#' @examples
#' strs_center("hello", 10)
#' strs_center("world", 10, "*")
#' @export
#' @seealso
#' [Python str.center() documentation](https://docs.python.org/3/library/stdtypes.html#str.center)
strs_center <- function(string, width, fillchar = " ") {
  stringi::stri_pad_both(string, width, pad = fillchar)
}
