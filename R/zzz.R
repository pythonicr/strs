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


.patterns <- list(
  alnum   = "^[\\p{L}\\p{Numeric_Type=Digit}\\p{Numeric_Type=Decimal}\\p{Numeric_Type=Numeric}\\p{Nd}]+$",
  alpha   = "^\\p{L}+$",
  ascii   = "^[\\u0000-\\u007F]+$|^$",
  decimal = "^\\p{Nd}+$",
  digit   = "^[\\p{Numeric_Type=Digit}\\p{Numeric_Type=Decimal}]+$",
  lower   = "^\\p{Ll}+$",
  numeric = "^[\\p{Numeric_Type=Digit}\\p{Numeric_Type=Decimal}\\p{Numeric_Type=Numeric}]+$",
  space   = "^\\p{WHITE_SPACE}+$",
  title   = "\\b\\p{Ll}",
  upper   = "^\\P{CASED}*\\p{Lu}+\\P{CASED}*$"
)
