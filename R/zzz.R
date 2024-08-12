.str_strip <- function(string, side = c("left", "right", "both"), chars = NULL) {
  if (is.null(chars)) {
    return(stringi::stri_trim(string, match.arg(side)))
  }
  checkmate::qassert(chars, "S+")
  base_pattern <- paste0("[", stringi::stri_flatten(chars), "]+")

  pattern <- switch(match.arg(side),
    "left"  = paste0("^", base_pattern),
    "right" = paste0(base_pattern, "$"),
    "both"  = paste0(paste0("^", base_pattern), "|", paste0(base_pattern, "$"))
  )
  stringi::stri_replace_all_regex(string, pattern, "")
}
