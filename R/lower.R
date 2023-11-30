#' @title strs_lower
#' @inheritParams stringr::str_to_lower
#' @export
strs_lower <- function(string, locale = "en") {
  stringr::str_to_lower(string, locale)
}
