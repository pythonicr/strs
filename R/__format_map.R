# This is kind of right but doesn't provide the same python behavior
strs_format_map <- function(string, mapping) {
  str_len <- length(string)
  if (str_len == 0) {
    # can't do anything with a zero length string
    return(character(0L))
  }
  .envir <- parent.frame()
  if (str_len == 1) {
    return(glue::glue_data(
      .x = mapping,
      string,
      .envir = .envir,
      .na = "",
      .null = "",
      .trim = FALSE
    ))
  }
  return(vapply(string,
    glue::glue_data,
    character(1L),
    .x = mapping,
    .envir = .envir,
    .na = "",
    .null = "",
    .trim = FALSE,
    USE.NAMES = FALSE
  ))
}
