#' @title strs_removeprefix
#' @description Remove a prefix from a string.
#' @export
strs_removeprefix <- function(string, prefix) {
  stringi::stri_replace_first_regex(
    string, paste0("^\\Q", prefix, "\\E"), ""
  )
}
