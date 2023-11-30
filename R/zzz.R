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
