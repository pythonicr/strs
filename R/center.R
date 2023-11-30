#' @title strs_center
#' @description Add padding to both sides of a string.
#' @inheritParams stringr::str_pad
#' @export
strs_center <- function(string, width, fillchar = " ") {
  stringr::str_pad(string, width, side = "both", pad = fillchar)
}
