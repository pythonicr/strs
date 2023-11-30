#' @title strs_isascii
#' @description Check whether `string` only contains ascii characters.
#' @export
strs_isascii <- function(string) {
  stringi::stri_detect_regex(string, pattern = .patterns$ascii) | stringi::stri_isempty(string)
}
