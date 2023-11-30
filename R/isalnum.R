#' @title strs_isalnum
#' @description Check whether ``string`` only contains letters and numbers.
#' @export
strs_isalnum <- function(string) {
  stringr::str_detect(string, pattern = "^[:alnum:]+$")
}
