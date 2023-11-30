#' @title strs_normalize_whitespace
#' @description Remove redundant whitespace.
#' @export
strs_normalize_whitespace <- function(string) {
  stringr::str_squish(string)
}
