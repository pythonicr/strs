#' @title strs_strip
#' @description Remove ``chars`` from both ends of a string. If ``chars`` is
#' NULL, this function removes whitespace.
#' @export
strs_strip <- function(string, chars = NULL) {
  .str_strip(string, side = "both", chars = chars)
}
