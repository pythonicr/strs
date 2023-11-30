#' @title strs_isalpha
#' @description Check whether ``string`` only contains letters.
#' @export
strs_isalpha <- function(string) {
  stringi::stri_detect_regex(string, pattern = .patterns$alpha)
}
