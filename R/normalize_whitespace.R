#' @title strs_normalize_whitespace
#' @description Remove redundant whitespace.
#' @export
strs_normalize_whitespace <- function(string) {
  stringi::stri_replace_all_regex(stringi::stri_trim_both(string), "\\s+", " ")
}
