#' @title strs_isdigit
#' @description Check whether ``string`` only contains digits.
#' @export
strs_isdigit <- function(string) {
  stringi::stri_detect_regex(string, pattern = .patterns$digit)
}
