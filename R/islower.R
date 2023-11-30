#' @title strs_islower
#' @description Check whether all cased characters of ``string`` are lowercased.
#' @export
strs_islower <- function(string) {
  stringi::stri_detect_regex(
    stringi::stri_replace_all_regex(string, "\\P{CASED}", ""),
    .patterns$lower
  )
}
