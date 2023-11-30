#' @title strs_isupper
#' @description Check whether ``string`` only contains uppercase letters.
#' Technically this deviates from how it is defined in python which is that all
#' cased characters are uppercase with at least one cased character.
#' @export
strs_isupper <- function(string) {
  stringi::stri_detect_regex(
    stringi::stri_replace_all_regex(string, "\\P{CASED}", ""),
    .patterns$upper
  )
}
