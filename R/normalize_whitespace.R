#' Normalize Whitespace in a String
#'
#' `strs_normalize_whitespace` normalizes the whitespace in each element of a
#' character vector. It trims leading and trailing whitespace and replaces any
#' sequence of whitespace characters within the string with a single space. This
#' function is akin to the typical Python pattern `" ".join(str.split())`.
#'
#' @param string A character vector where each element is a string in which to
#' normalize whitespace.
#' @return A character vector of the same length as `string`, with whitespace
#' normalized in each element.
#' @examples
#' strs_normalize_whitespace("  hello   world  ")
#' strs_normalize_whitespace("\thello\nworld\t")
#' @export
strs_normalize_whitespace <- function(string) {
  stringi::stri_replace_all_regex(stringi::stri_trim_both(string), "\\s+", " ")
}
