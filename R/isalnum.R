#' @title strs_isalnum
#' @description Check whether ``string`` only contains letters and numbers.
#' @export
strs_isalnum <- function(string) {
  stringi::stri_detect_regex(string, pattern = .patterns$alnum)
}
