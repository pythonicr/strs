#' @title strs_center
#' @description Add padding to both sides of a string.
#' @inheritParams stringr::str_pad
#' @export
strs_center <- function(string, width, fillchar = " ") {
  stringi::stri_pad_both(string, width, pad = fillchar)
}
