#' @title strs_count
#' @description Count the number of occurences of a substring.
#' @export
strs_count <- function(string, substring, strart = 1L, end = -1L) {
  if (substring == "") {
    # substring is "", so return the number of empty strings in the string
    return(stringr::str_length(string) + 1)
  }

  if (start != 1L || end != -1L) {
    string <- stringr::str_sub(string, start = start, end = end)
  }
  pattern <- stringr::fixed(substring, ignore_case = FALSE)
  return(stringr::str_count(string, pattern))
}
