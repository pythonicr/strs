#' Slice substrings from a string
#'
#' `strs_slice` extracts substrings from each element of a character vector,
#' specified by start and stop positions. It is similar to Python's slicing
#' syntax for strings, but it uses 1 indexing and stops are inclusive.
#'
#' @param string A character vector where each element is a string to slice.
#' @param start An integerish scalar for the starting position for slicing (inclusive).
#' @param stop An integerish scalar for the ending position for slicing (inclusive).
#' @param step An integer greater than 0 or equal to -1 for the step size. If -1 is provided,
#' each string will be reversed after slicing operations.
#' @return A character vector of the same length as `string`, with each element
#' being the sliced substring.
#' @examples
#' strs_slice("hello world", 1, 5)
#' strs_slice("hello world", 7)
#' strs_slice("hello world", start = 7, stop = 11)
#' @export
strs_slice <- function(string, start = 1L, stop = -1L, ..., step = 1L) {
  # early exits & easy cases
  if (step == 0L) {
    stop("slice step cannot be zero.")
  } else if (stop == 0L) {
    # return a character vector of empty strings
    return(character(length(string)))
  } else if (step < -1L) {
    stop("slice step less than -1 is not supported yet.")
  }

  result <- stringi::stri_sub(string, from = start, to = stop)
  if (step == -1L) {
    return(stringi::stri_reverse(result))
  } else if (step == 1L) {
    return(result)
  }
  start <- seq.int(from = 1, to = max(stringi::stri_length(result)), by = step)
  stringi::stri_join_list(stringi::stri_sub_all(result, from = start, length = 1L))
}
