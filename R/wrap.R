#' @title strs_textwrap
#' @description Wrap strings into nicely formatted paragraphs.
#' This is a wrapper around [stringi::stri_wrap()] which implements
#' the Knuth-Plass paragraph wrapping algorithm.
#' @param string character vector of strings to reformat.
#' @param width positive integer giving target line width in characters. A
#' width less than or equal to 1 will put each word on its own line.
#' @param initial_indent non-negative integer giving indentation of first line in
#' each paragraph
#' @param subsequent_indent non-negative integer giving indentation of following lines in
#' each paragraph
#' @param break_long_words If `FALSE`, the default, wrapping will only occur at
#' whitespace. If `TRUE`, can break on any non-word character (e.g. `/`, `-`).
#' @return A character vector of re-wrapped strings.
#' @export
strs_wrap <- function(string,
                      width = 70,
                      initial_indent = 0,
                      subsequent_indent = 0,
                      break_long_words = FALSE) {
  checkmate::qassert(width, "N1()")
  checkmate::qassert(initial_indent, "N1()")
  checkmate::qassert(subsequent_indent, "N1()")
  checkmate::qassert(break_long_words, "B1")

  out <- stringi::stri_wrap(string,
    width = width, indent = initial_indent, exdent = subsequent_indent,
    whitespace_only = !break_long_words, simplify = FALSE
  )
  vapply(out, stringr::str_c, collapse = "\n", character(1))
}
