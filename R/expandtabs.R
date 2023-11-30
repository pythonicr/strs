#' @title strs_expandtabs
#' @description Replace each ``\t`` with spaces.
#' @export
strs_expandtabs <- function(string, tabsize = 8) {
  replacement <- paste0(rep(" ", tabsize), collapse = "")
  stringr::str_replace_all(string, "\\t", replacement)
}
