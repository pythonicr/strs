#' @title strs_lower
#' @inheritParams stringr::str_to_lower
#' @export
strs_lower <- function(string, locale = "en") {
  stringi::stri_trans_tolower(string, locale)
}
