#' @title strs_capitalize
#' @description Convert the first character of a string to uppercase and the
#' remaining characters to lowercase.
#' @inheritParams stringr::str_to_sentence
#' @export
strs_capitalize <- function(string, locale = "en") {
  return(stringr::str_to_sentence(string, locale))
}

#' @title strs_center
#' @description Add padding to both sides of a string.
#' @export
strs_center <- function(string, width, fillchar = " ") {
  stringr::str_pad(string, width, side = "both", pad = fillchar)
}

#' @title strs_contains
#' @description Check whether a string contains the substring.
#' @inheritParams stringr::str_detect
#' @export
strs_contains <- function(string, substring) {
  substring <- stringr::fixed(substring)
  stringr::str_detect(string, substring, negate = FALSE)
}

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

#' @title strs_endswith
#' @description Check whether a string ends with ``suffix``.
#' @export
strs_endswith <- function(string, suffix) {
  suffix <- stringr::fixed(suffix)
  stringr::str_ends(string, suffix, negate = FALSE)
}

#' @title strs_expandtabs
#' @description Replace each ``\t`` with spaces.
#' @export
strs_expandtabs <- function(string, tabsize = 8) {
  replacement <- paste0(rep(" ", tabsize), collapse = "")
  stringr::str_replace_all(string, "\\t", replacement)
}

#' @title strs_find
#' @description Search each string for first occurence of ``substring``. Returns
#' the substring index or NA if not found.
#' @export
strs_find <- function(string, substring) {
  pattern <- stringr::fixed(substring, ignore_case = FALSE)
  as.integer(stringr::str_locate(string, pattern)[, "start"])
}

#' @title strs_format
#' @inheritParams stringr::str_glue
#' @inheritParams stringr::str_glue_data
#' @export
strs_format <- function(..., .data = NULL, .sep = "", .envir = parent.frame(), .na = "NA") {
  if (is.null(.data)) {
    return(stringr::str_glue(..., .sep = .sep, .envir = .envir))
  }
  stringr::str_glue_data(.x = .data, ..., .sep = .sep, .envir = .envir, .na = .na)
}

#' @title strs_isalnum
#' @description Check whether ``string`` only contains letters and numbers.
#' @export
strs_isalnum <- function(string) {
  stringr::str_detect(string, pattern = "^[:alnum:]+$")
}

#' @title strs_isalpha
#' @description Check whether ``string`` only contains letters.
#' @export
strs_isalpha <- function(string) {
  stringr::str_detect(string, pattern = "^[:alpha:]+$")
}

#' @title strs_isdigit
#' @description Check whether ``string`` only contains digits.
#' @export
strs_isdigit <- function(string) {
  stringr::str_detect(string, pattern = "^[:digit:]+$")
}

#' @title strs_isgraph
#' @description Check whether ``string`` only contains punctuation, letters, and numbers.
#' @export
strs_isgraph <- function(string) {
  stringr::str_detect(string, pattern = "^[:graph:]+$")
}

#' @title strs_islower
#' @description Check whether ``string`` only contains lowercase letters.
#' @export
strs_islower <- function(string) {
  stringr::str_detect(string, pattern = "^[:lower:]+$")
}

#' @title strs_ispunct
#' @description Check whether ``string`` only contains punctuation.
#' @export
strs_ispunct <- function(string) {
  stringr::str_detect(string, pattern = "^[:punct:]+$")
}

#' @title strs_isspace
#' @description Check whether ``string`` only contains whitespace characters.
#' @export
strs_isspace <- function(string) {
  stringr::str_detect(string, pattern = "^[:space:]+$")
}

#' @title strs_isupper
#' @description Check whether ``string`` only contains uppercase letters.
#' @export
strs_isupper <- function(string) {
  stringr::str_detect(string, pattern = "^[:upper:]+$")
}

#' @title strs_join
#' @description If a single object is passed in after the separator, it's
#' assumed the user wants to flatten. If several objects are passed, it's
#' assumed that the user wants to concatenate.
#' @param sep string inserted between each character
#' @export
strs_join <- function(sep, ...) {
  checkmate::qassert(sep, "S1")
  if (...length() == 1) {
    return(stringr::str_flatten(..1, collapse = sep))
  }
  return(stringr::str_c(..., sep = sep))
}

#' @title strs_ljust
#' @description Add padding to the left of a string.
#' @export
strs_ljust <- function(string, width, fillchar = " ") {
  stringr::str_pad(string, width, side = "left", pad = fillchar)
}

#' @title strs_lower
#' @inheritParams stringr::str_to_lower
#' @export
strs_lower <- function(string, locale = "en") {
  stringr::str_to_lower(string, locale)
}

#' @title strs_lstrip
#' @description Remove ``chars`` from the left end of a string. If ``chars`` is
#' NULL, this function removes whitespace.
#' @export
strs_lstrip <- function(string, chars = NULL) {
  .str_strip(string, side = "left", chars = chars)
}

#' @title strs_removeprefix
#' @description Remove a prefix from a string.
#' @export
strs_removeprefix <- function(string, prefix) {
  .str_remove(string, prefix, "prefix")
}

#' @title strs_removesuffix
#' @description Remove a suffix from a string.
#' @export
strs_removesuffix <- function(string, suffix) {
  .str_remove(string, suffix, "suffix")
}

#' @title strs_replace
#' @description Replace substrings in a string.
#' @inheritParams stringr::str_replace_all
#' @export
strs_replace <- function(string, pattern, replacement) {
  stringr::str_replace_all(string, pattern, replacement)
}

#' @title strs_rfind
#' @description Search each string for the last occurence of ``substring``.
#' Returns the substring index or NA if not found.
#' @export
strs_rfind <- function(string, substring) {
  pattern <- stringr::fixed(substring, ignore_case = FALSE)
  vapply(
    stringr::str_locate_all(string, pattern),
    function(x) ifelse(length(x) == 0, NA_integer_, max(x[, "start"])),
    integer(1)
  )
}

#' @title strs_rjust
#' @description Add padding to the right of a string.
#' @export
strs_rjust <- function(string, width, fillchar = " ") {
  stringr::str_pad(string, width, side = "right", pad = fillchar)
}

#' @title strs_rstrip
#' @description Remove ``chars`` from the right end of a string. If ``chars`` is
#' NULL, this function removes whitespace.
#' @export
strs_rstrip <- function(string, chars = NULL) {
  .str_strip(string, side = "right", chars = chars)
}

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

#' @title strs_split
#' @description Split ``string`` on ``char``. Passing a value for ``n``
#' determines the number of splits to apply.
#' @export
strs_split <- function(string, char = " ", n = Inf) {
  stringr::str_split_fixed(string, pattern = char, n = n)
}

#' @title strs_splitlines
#' @description Split ``string`` on newline characters (`\n`).
#' @export
strs_splitlines <- function(string, keepends = FALSE) {
  stringi::stri_split_lines(string, omit_empty = !keepends)
}

#' @title strs_startswith
#' @description Check whether a string starts with ``prefix``.
#' @export
strs_startswith <- function(string, prefix) {
  prefix <- stringr::fixed(prefix)
  stringr::str_starts(string, prefix, negate = FALSE)
}

#' @title strs_strip
#' @description Remove ``chars`` from both ends of a string. If ``chars`` is
#' NULL, this function removes whitespace.
#' @export
strs_strip <- function(string, chars = NULL) {
  .str_strip(string, side = "both", chars = chars)
}

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
strs_textwrap <- function(string,
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

#' @title strs_rep
#' Create a new string by repeating ``string`` ``times``.
#' @export
strs_rep <- function(string, times) {
  checkmate::qassert(string, "S1")
  checkmate::qassert(times, "N1[1,)")
  stringr::str_dup(string, times)
}

#' @title strs_title
#' Convert a string to titlecase.
#' @export
strs_title <- function(string, locale = "en") {
  stringr::str_to_title(string, locale)
}

#' @title strs_upper
#' Convert a string to upper case.
#' @export
strs_upper <- function(string, locale = "en") {
  stringr::str_to_upper(string, locale)
}

#' @title strs_normalize_whitespace
#' @description Remove redundant whitespace.
#' @export
strs_normalize_whitespace <- function(string) {
  stringr::str_squish(string)
}


# ============================================================================ #
# Helper functions
# ============================================================================ #



.str_strip <- function(string, side = c("left", "right", "both"), chars = NULL) {
  side <- match.arg(side)
  if (is.null(chars)) {
    return(stringr::str_trim(string, side))
  }
  chars <- stringr::fixed(strs_join("", chars))
  pattern <- paste0("[", chars, "]+")

  if (side %in% c("left", "both")) {
    string <- stringr::str_replace_all(
      string,
      strs_join("", c("^", pattern)), ""
    )
  }

  if (side %in% c("right", "both")) {
    string <- stringr::str_replace_all(
      string,
      strs_join("", c(pattern, "$")), ""
    )
  }
  return(string)
}

.str_remove <- function(string, substring, type = c("prefix", "suffix")) {
  escaped <- stringr::fixed(substring)
  pattern <- switch(match.arg(type),
    "suffix" = strs_join("", c(escaped, "$")),
    "prefix" = strs_join("", c("^", escaped)),
  )
  stringr::str_replace(string, pattern, "")
}
