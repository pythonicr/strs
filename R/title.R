#' @title strs_title
#' Convert a string to titlecase.
#' @export
strs_title <- function(string, locale = "en") {
  stringi::stri_trans_totitle(
    string,
    opts_brkiter = stringi::stri_opts_brkiter(locale = locale)
  )
}
