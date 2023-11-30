#' @title strs_upper
#' Convert a string to upper case.
#' @export
strs_upper <- function(string, locale = "en") {
  stringi::stri_trans_toupper(string, locale)
}
