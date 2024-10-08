% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/isalnum.R
\name{strs_isalnum}
\alias{strs_isalnum}
\title{Check if string is alphanumeric}
\usage{
strs_isalnum(string)
}
\arguments{
\item{string}{A character vector to be checked.}
}
\value{
A logical vector of the same length as \code{string}, with each element
indicating whether the corresponding element of \code{string} is completely
alphanumeric.
}
\description{
\code{strs_isalnum} checks whether each element of a character vector is
alphanumeric. This means that the function tests if all characters in the
string are either letters or digits. It is similar to Python's
\code{str.isalnum()} method.
}
\examples{
strs_isalnum("hello123")
strs_isalnum("hello world")
strs_isalnum("12345")
}
\seealso{
\href{https://docs.python.org/3/library/stdtypes.html#str.isalnum}{Python str.isalnum() documentation}
}
