#' String Interpolation with Data Support
#'
#' The `strs_format` function provides string interpolation using values from a data argument, similar to Python's
#' `str.format` method. For more information, see the details.
#'
#' @param string A character vector containing the string with placeholders in curly braces `{}`. If the vector contains
#' more than one string, they are concatenated before interpolation.
#' @return A character vector with the placeholders replaced by the evaluated expressions.
#'
#' @details Under the hood, this function uses the `glue::glue_data()` function to perform the interpolation. By
#' default, this function will only use the variables provided in `...` and `.data`. It will NOT use the immediate
#' environment to perform the interpolations. If any interpolated expression is NA, it will be NA in the output. If any
#' interpolated expression is NULL, it will be NULL in the output.
#'
#' @examples
#' # Using a named list for substitutions
#' data_list <- list(name = "Alice", age = 30)
#' strs_format("My name is {name} and I am {age} years old.", .data = data_list)
#' # Output: "My name is Alice and I am 30 years old."
#'
#' # Using additional arguments
#' strs_format("My name is {name} and I am {age} years old.", name = "Bob", age = 25)
#' # Output: "My name is Bob and I am 25 years old."
#'
#' @export
strs_format <- function(string, ..., .data = NULL) {
  do.call(
    glue::glue_data, list(
      .x = .data,
      string,
      ...,
      .envir = NULL,
      .sep = "",
      .open = "{",
      .close = "}",
      .trim = FALSE,
      .na = "NA",
      .null = "NULL",
      .transformer = transformer
    )
  ) |> as.character()
}
