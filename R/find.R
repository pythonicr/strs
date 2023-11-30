#' @title strs_find
#' @description Search each string for first occurence of ``substring``. Returns
#' the substring index or NA if not found.
#' @export
strs_find <- function(string, substring) {
  pattern <- stringr::fixed(substring, ignore_case = FALSE)
  as.integer(stringr::str_locate(string, pattern)[, "start"])
}
