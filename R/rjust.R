#' @title strs_rjust
#' @description Add padding to the right of a string.
#' @export
strs_rjust <- function(string, width, fillchar = " ") {
  stringi::stri_pad_right(string, width, pad = fillchar)
}
