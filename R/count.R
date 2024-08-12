#' Count occurrences of a substring in a string
#'
#' `strs_count` counts the number of times a specified substring occurs in each
#' element of a character vector. Optionally, the search can be limited to a
#' substring of each element, specified by `start` and `end` positions. This
#' function is similar to Python's `str.count()` method.
#'
#' @param string A character vector where each element is a string in which to
#' count occurrences of `substring`.
#' @param substring The substring to count within each element of `string`.
#' @param start An optional integer specifying the starting position in each
#' element of `string` for the search. Defaults to 1, indicating the start of
#' the string.
#' @param end An optional integer specifying the ending position in each element
#' of `string` for the search. The default value of -1 indicates the end of the
#' string.
#' @return An integer vector of the same length as `string`, with each element
#' indicating the count of `substring` in the corresponding element of `string`.
#' @examples
#' strs_count("hello world", "o")
#' strs_count("banana", "na")
#' strs_count("hello world", "o", start = 6)
#' strs_count("hello world", "o", end = 5)
#' @export
#' @seealso [Python str.count() documentation](https://docs.python.org/3/library/stdtypes.html#str.count)
strs_count <- function(string, substring, start = 1L, end = -1L) {
  if (length(substring) == 1L && substring == "") {
    # substring is "", so return the number of empty strings in the string
    return(stringi::stri_length(string) + 1L)
  }
  if (!missing(start) || !missing(end)) {
    string <- stringi::stri_sub(string, from = start, to = end)
  }
  stringi::stri_count_fixed(string, substring)
}
