#' @title strs_removesuffix
#' @description Remove a suffix from a string.
#' @export
strs_removesuffix <- function(string, suffix) {
  stringi::stri_replace_first_regex(
    string, paste0("\\Q", suffix, "\\E$"), ""
  )
}
