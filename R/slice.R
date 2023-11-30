#' @title strs_slice
#' @description Python like string slicing where negative values are treated as
#' the end of the string.
#' @export
strs_slice <- function(string, start = 1L, stop = -1L) {
  stringi::stri_sub(string, from = start, to = stop)
}
