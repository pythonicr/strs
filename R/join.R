#' @title strs_join
#' @description If a single object is passed in after the separator, it's
#' assumed the user wants to flatten. If several objects are passed, it's
#' assumed that the user wants to concatenate.
#' @param sep string inserted between each character
#' @export
strs_join <- function(sep, ...) {
  checkmate::qassert(sep, "S1")
  if (...length() == 1) {
    return(stringr::str_flatten(..1, collapse = sep))
  }
  return(stringr::str_c(..., sep = sep))
}
