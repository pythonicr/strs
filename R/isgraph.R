#' @title strs_isgraph
#' @description Check whether ``string`` only contains punctuation, letters, and numbers.
#' @export
strs_isgraph <- function(string) {
  stringr::str_detect(string, pattern = "^[:graph:]+$")
}
