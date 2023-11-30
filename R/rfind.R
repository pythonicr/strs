#' @title strs_rfind
#' @description Search each string for the last occurence of ``substring``.
#' Returns the substring index or NA if not found.
#' @export
strs_rfind <- function(string, substring) {
  pattern <- stringr::fixed(substring, ignore_case = FALSE)
  vapply(
    stringr::str_locate_all(string, pattern),
    function(x) ifelse(length(x) == 0, NA_integer_, max(x[, "start"])),
    integer(1)
  )
}
