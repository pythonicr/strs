#' @title strs_ljust
#' @description Add padding to the left of a string.
#' @export
strs_ljust <- function(string, width, fillchar = " ") {
  stringr::str_pad(string, width, side = "left", pad = fillchar)
}
