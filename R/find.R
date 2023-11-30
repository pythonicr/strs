#' @title strs_find
#' @description Search each string for first occurence of ``substring``. Returns
#' the substring index or NA if not found.
#' @export
strs_find <- function(string, substring) {
  as.integer(stringi::stri_locate_first_fixed(string, substring)[, "start"])
}
