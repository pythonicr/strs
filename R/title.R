#' @title strs_title
#' Convert a string to titlecase.
#' @export
strs_title <- function(string, locale = "en") {
  stringr::str_to_title(string, locale)
}
