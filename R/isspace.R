#' @title strs_isspace
#' @description Check whether ``string`` only contains whitespace characters.
#' @export
strs_isspace <- function(string) {
  stringr::str_detect(string, pattern = "^[:space:]+$")
}
