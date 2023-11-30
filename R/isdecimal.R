#' @title strs_isdecimal
#' @description Check whether ``string`` only contains digits.
#' @export
strs_isdecimal <- function(string) {
  stringi::stri_detect_regex(string, pattern = .patterns$decimal)
}
