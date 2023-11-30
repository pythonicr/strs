#' @title strs_isnumeric
#' @description Check whether ``string`` only contains digits.
#' @export
strs_isnumeric <- function(string) {
  stringi::stri_detect_regex(string, pattern = .patterns$numeric)
}
