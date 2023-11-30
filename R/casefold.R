#' @export
strs_casefold <- function(string) {
  stringi::stri_trans_casefold(string)
}
