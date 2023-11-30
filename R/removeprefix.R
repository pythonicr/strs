#' @title strs_removeprefix
#' @description Remove a prefix from a string.
#' @export
strs_removeprefix <- function(string, prefix) {
  .str_remove(string, prefix, "prefix")
}
