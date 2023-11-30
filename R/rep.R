#' @title strs_rep
#' Create a new string by repeating ``string`` ``times``.
#' @export
strs_rep <- function(string, times) {
  checkmate::qassert(string, "S1")
  checkmate::qassert(times, "N1[1,)")
  stringr::str_dup(string, times)
}
