#' @title strs_isspace
#' @description Check whether ``string`` only contains whitespace characters.
#' @export
strs_isspace <- function(string) {
  stringi::stri_detect_regex(string, .patterns$space)
}
