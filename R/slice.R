#' Slice Substrings from a String
#'
#' `strs_slice` extracts substrings from each element of a character vector,
#' specified by start and stop positions. It is similar to Python's slicing
#' syntax for strings.
#'
#' @param string A character vector where each element is a string to slice.
#' @param start The starting position for slicing (inclusive).
#' @param stop The ending position for slicing (exclusive).
#' @return A character vector of the same length as `string`, with each element
#' being the sliced substring.
#' @examples
#' strs_slice("hello world", 1, 5)
#' strs_slice("hello world", 7)
#' strs_slice("hello world", start = 7, stop = 11)
#' @export
strs_slice <- function(string, start = 1L, stop = -1L) {
  stringi::stri_sub(string, from = start, to = stop)
}
