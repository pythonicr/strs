% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/islower.R
\name{strs_islower}
\alias{strs_islower}
\title{Check if string is in lowercase}
\usage{
strs_islower(string)
}
\arguments{
\item{string}{A character vector to be checked.}
}
\value{
A logical vector of the same length as \code{string}, indicating whether
each element is entirely in lowercase.
}
\description{
\code{strs_islower} checks whether each element of a character vector is in
lowercase. It is similar to Python's \code{str.islower()} method.
}
\examples{
strs_islower("hello")
strs_islower("Hello")
}
\seealso{
\href{https://docs.python.org/3/library/stdtypes.html#str.islower}{Python str.islower() documentation}
}
