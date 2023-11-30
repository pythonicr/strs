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