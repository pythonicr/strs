#' @title strs_capitalize
#' @description Convert the first character of a string to uppercase and the
#' remaining characters to lowercase.
#' @inheritParams stringr::str_to_sentence
#' @export
strs_capitalize <- function(string, locale = "en") {
  stringi::stri_trans_totitle(string, opts_brkiter = stringi::stri_opts_brkiter(
    type = "sentence",
    locale = locale
  ))
}
