% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/split.R
\name{strs_split}
\alias{strs_split}
\title{Split string into substrings}
\usage{
strs_split(string, sep = " ", maxsplit = -1L)
}
\arguments{
\item{string}{A character vector to split.}

\item{sep}{The separator on which to split the string.}

\item{maxsplit}{The maximum number of splits to perform. If -1, all possible
splits are performed.}
}
\value{
A list of character vectors, with each vector containing the split
substrings from the corresponding element of \code{string}.
}
\description{
\code{strs_split} splits each element of a character vector into substrings based
on a separator. It is similar to Python's \code{str.split()} method.
}
\examples{
strs_split("hello world", " ")
strs_split("one,two,three", ",", maxsplit = 1)
}
\seealso{
\href{https://docs.python.org/3/library/stdtypes.html#str.split}{Python str.split() documentation}
}
