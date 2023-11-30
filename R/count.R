#' @title strs_count
#' @description Count the number of occurences of a substring.
#' @export
strs_count <- function(string, substring, start = 1L, end = -1L) {
  if (length(substring) == 1 && substring == "") {
    # substring is "", so return the number of empty strings in the string
    return(stringi::stri_length(string) + 1)
  }
  if (!missing(start) || !missing(end)) {
    string <- stringi::stri_sub(string, from = start, to = end)
  }
  stringi::stri_count_fixed(string, substring)
}
