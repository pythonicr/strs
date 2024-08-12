#' Expand tabs in a string to spaces
#'
#' `strs_expandtabs` replaces each tab character (`\\t`) in a string with a
#' specified number of spaces. This function behaves similarly to Python's
#' `str.expandtabs()` method.
#'
#' @param string A character vector where each element is a string in which to
#' expand tabs.
#' @param tabsize An integer specifying the number of spaces to replace each tab
#' character with. Defaults to 8.
#' @return A character vector of the same length as `string`, with tabs in each
#' element replaced by `tabsize` number of spaces.
#' @examples
#' strs_expandtabs("hello\tworld", 4)
#' strs_expandtabs("one\ttwo\tthree", 8)
#' @export
#' @seealso [Python str.expandtabs() documentation](https://docs.python.org/3/library/stdtypes.html#str.expandtabs)
strs_expandtabs <- function(string, tabsize = 8) {
  stringi::stri_replace_all_regex(string, "\\t", base::strrep(" ", tabsize))
}
