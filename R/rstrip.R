#' @title strs_rstrip
#' @description Remove ``chars`` from the right end of a string. If ``chars`` is
#' NULL, this function removes whitespace.
#' @export
strs_rstrip <- function(string, chars = NULL) {
  .str_strip(string, side = "right", chars = chars)
}
