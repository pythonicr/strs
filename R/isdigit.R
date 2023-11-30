#' @title strs_isdigit
#' @description Check whether ``string`` only contains digits.
#' @export
strs_isdigit <- function(string) {
  stringr::str_detect(string, pattern = "^[:digit:]+$")
}
