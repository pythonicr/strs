#' @title strs_slice
#' @description Python like string slicing where negative values are treated as
#' the end of the string.
#' @export
strs_slice <- function(string, start = 1L, stop = NULL) {
  checkmate::qassert(string, "S*")
  checkmate::qassert(start, "n1")
  checkmate::qassert(stop, c("n1", "0"))

  use_stop <- FALSE
  if (is.null(stop)) {
    # When stop is not provided, we can assume that the entire string should be
    # used.
    stop <- nchar(string)
    use_stop <- TRUE
  }

  if (sign(start) == -1L) {
    # When start is negative, we want to start from the end (e.g., -1L would be
    # saying, give me the last character).
    start <- sum(1L, ifelse(isTRUE(use_stop), stop, nchar(string)), start)
  }

  if (start > stop) {
    # When we start after we are supposed to stop, just return a bunch of blank
    # strings.
    return(rep("", length(string)))
  }

  return(substring(string, start, stop))
}
