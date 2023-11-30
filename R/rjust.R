#' @title strs_rjust
#' @description Add padding to the right of a string.
#' @export
strs_rjust <- function(string, width, fillchar = " ") {
  stringr::str_pad(string, width, side = "right", pad = fillchar)
}
