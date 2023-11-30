#' @title strs_endswith
#' @description Check whether a string ends with ``suffix``.
#' @export
strs_endswith <- function(string, suffix) {
  stringi::stri_endswith_fixed(string, suffix)
}
