#' @title strs_ljust
#' @description Add padding to the left of a string.
#' @export
strs_ljust <- function(string, width, fillchar = " ") {
  stringi::stri_pad_left(string, width, pad = fillchar)
}
