#' @title strs_isalpha
#' @description Check whether ``string`` only contains letters.
#' @export
strs_isalpha <- function(string) {
  stringr::str_detect(string, pattern = "^[:alpha:]+$")
}
