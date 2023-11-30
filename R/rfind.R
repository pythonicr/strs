#' @title strs_rfind
#' @description Search each string for the last occurence of ``substring``.
#' Returns the substring index or NA if not found.
#' @export
strs_rfind <- function(string, substring) {
  as.integer(stringi::stri_locate_last_fixed(string, substring)[, "start"])
}
