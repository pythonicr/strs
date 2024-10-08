% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normalize_whitespace.R
\name{strs_normalize_whitespace}
\alias{strs_normalize_whitespace}
\title{Normalize whitespace in a string}
\usage{
strs_normalize_whitespace(string)
}
\arguments{
\item{string}{A character vector where each element is a string in which to
normalize whitespace.}
}
\value{
A character vector of the same length as \code{string}, with whitespace
normalized in each element.
}
\description{
\code{strs_normalize_whitespace} normalizes the whitespace in each element of a
character vector. It trims leading and trailing whitespace and replaces any
sequence of whitespace characters within the string with a single space. This
function is akin to the typical Python pattern \verb{" ".join(str.split())}.
}
\examples{
strs_normalize_whitespace("  hello   world  ")
strs_normalize_whitespace("\thello\nworld\t")
}
