#' @title strs_split
#' @description Split ``string`` on ``char``. Passing a value for ``n``
#' determines the number of splits to apply.
#' @export
strs_split <- function(string, sep = " ", maxsplit = -1L) {
  stringi::stri_split_fixed(string, sep, n = maxsplit)
}
