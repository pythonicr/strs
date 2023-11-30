#' @title strs_startswith
#' @description Check whether a string starts with ``prefix``.
#' @export
strs_startswith <- function(string, prefix) {
  stringi::stri_startswith_fixed(string, prefix)
}
