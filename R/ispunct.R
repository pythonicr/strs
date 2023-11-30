#' @title strs_ispunct
#' @description Check whether ``string`` only contains punctuation.
#' @export
strs_ispunct <- function(string) {
  stringr::str_detect(string, pattern = "^[:punct:]+$")
}
