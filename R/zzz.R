.str_strip <- function(string, side = c("left", "right", "both"), chars = NULL) {
  if (is.null(chars)) {
    return(stringi::stri_trim(string, match.arg(side)))
  }
  checkmate::qassert(chars, "S+")
  chars <- stringr::str_escape(stringi::stri_flatten(chars))
  base_pattern <- paste0("[", chars, "]+")

  pattern <- switch(match.arg(side),
    "left"  = paste0("^", base_pattern),
    "right" = paste0(base_pattern, "$"),
    "both"  = paste0(paste0("^", base_pattern), "|", paste0(base_pattern, "$"))
  )
  stringr::str_replace_all(string, pattern, "")
}

.str_remove <- function(string, substring, type = c("prefix", "suffix")) {
  escaped <- stringr::str_escape(substring)
  pattern <- switch(match.arg(type),
    "suffix" = paste0(escaped, "$"),
    "prefix" = paste0("^", escaped),
  )
  stringr::str_replace(string, pattern, "")
}
