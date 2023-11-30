#' @title strs_split
#' @description Split ``string`` on ``char``. Passing a value for ``n``
#' determines the number of splits to apply.
#' @export
strs_split <- function(string, char = " ", n = Inf) {
  stringr::str_split_fixed(string, pattern = char, n = n)
}
