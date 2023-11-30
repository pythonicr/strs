#' @title strs_splitlines
#' @description Split ``string`` on newline characters (`\n`).
#' @export
strs_splitlines <- function(string, keepends = FALSE) {
  stringi::stri_split_lines(string, omit_empty = !keepends)
}
