#' @title strs_isupper
#' @description Check whether ``string`` only contains uppercase letters.
#' @export
strs_isupper <- function(string) {
  stringr::str_detect(string, pattern = "^[:upper:]+$")
}
