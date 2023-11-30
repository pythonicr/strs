#' @title strs_expandtabs
#' @description Replace each ``\t`` with spaces.
#' @export
strs_expandtabs <- function(string, tabsize = 8) {
  stringi::stri_replace_all_regex(string, "\\t", base::strrep(" ", tabsize))
}
