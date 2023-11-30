#' @title strs_lstrip
#' @description Remove ``chars`` from the left end of a string. If ``chars`` is
#' NULL, this function removes whitespace.
#' @export
strs_lstrip <- function(string, chars = NULL) {
  .str_strip(string, side = "left", chars = chars)
}
