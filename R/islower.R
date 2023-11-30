#' @title strs_islower
#' @description Check whether ``string`` only contains lowercase letters.
#' @export
strs_islower <- function(string) {
  stringr::str_detect(string, pattern = "^[:lower:]+$")
}
