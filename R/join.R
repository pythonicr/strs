#' Join elements into a single string with a separator
#'
#' `strs_join` concatenates elements of `iterable` using `sep`. It is similar to
#' Python's `str.join()`.
#'
#' @param sep A string separator used to join the elements.
#' @param iterable A character vector to be joined.
#' @return A single string with elements of `iterable` joined by `sep`.
#' @examples
#' strs_join("-", c("hello", "world"))
#' strs_join("", c("hello", "world"))  # no separator
#' @seealso [Python str.join() documentation](https://docs.python.org/3/library/stdtypes.html#str.join)
#' @export
strs_join <- function(sep, iterable) {
  stringi::stri_flatten(iterable, collapse = sep)
}
