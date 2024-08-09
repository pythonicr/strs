
<!-- README.md is generated from README.Rmd. Please edit that file -->

# strs: String Manipulation Functions in R

## Overview

**strs** is an R package that provides a comprehensive set of string
manipulation functions, mirroring the functionality and naming
conventions of Python’s `str` methods. It aims to make string operations
in R more accessible for users familiar with Python. Under the hood,
every function uses the `stringi` package to ensure the results are
consistent.

## Installation

You can install the `strs` package directly from GitHub.

``` r
# Install devtools if you haven't already
install.packages("devtools")

# Install strs package from GitHub
devtools::install_github("pythonicr/strs")
```

## Getting Started

### Basic Usage

Here are some examples demonstrating how to use the functions provided
by the **strs** package.

#### Capitalize the First Character of Each Sentence

The `strs_capitalize` function capitalizes the first character of each
string in a character vector.

``` r
library(strs)

# Capitalize the first character of each sentence
capitalized <- strs_capitalize("hello world")
print(capitalized)
#> [1] "Hello world"
```

#### Perform Case Folding on Strings

The `strs_casefold` function performs case folding on each element of a
character vector, useful for case-insensitive matching.

``` r
# Perform case folding
folded <- strs_casefold("HELLO World")
print(folded)
#> [1] "hello world"
```

#### Center a String in a Field of a Given Width

The `strs_center` function centers each element of a character vector in
a field of a specified width, padding with a specified character.

``` r
# Center a string with padding
centered <- strs_center("hello", 10)
print(centered)
#> [1] "  hello   "
```

#### Check if String Contains a Substring

The `strs_contains` function checks whether each element of a character
vector contains a specified substring.

``` r
# Check if strings contain a substring
contains <- strs_contains("hello world", "world")
print(contains)
#> [1] TRUE
```

#### Count Occurrences of a Substring in a String

The `strs_count` function counts the number of times a specified
substring occurs in each element of a character vector.

``` r
# Count occurrences of a substring
count <- strs_count("hello world", "o")
print(count)
#> [1] 2
```

#### Check if String Ends With a Specified Suffix

The `strs_endswith` function determines whether each element of a
character vector ends with a specified suffix.

``` r
# Check if strings end with a suffix
endswith <- strs_endswith("hello world", "world")
print(endswith)
#> [1] TRUE
```

#### Expand Tabs in a String to Spaces

The `strs_expandtabs` function replaces each tab character (`\t`) in a
string with a specified number of spaces.

``` r
# Expand tabs to spaces
expanded <- strs_expandtabs("hello\tworld", 4)
print(expanded)
#> [1] "hello    world"
```

#### Find the First Occurrence of a Substring in a String

The `strs_find` function locates the first occurrence of a specified
substring within each element of a character vector.

``` r
# Find the first occurrence of a substring
first_occurrence <- strs_find("hello world", "world")
print(first_occurrence)
#> [1] 7
```

#### Check if String is Alphanumeric

The `strs_isalnum` function checks whether each element of a character
vector is alphanumeric.

``` r
# Check if strings are alphanumeric
isalnum <- strs_isalnum("hello123")
print(isalnum)
#> [1] TRUE
```

#### Check if String Contains Only Alphabetical Characters

The `strs_isalpha` function checks whether each element of a character
vector contains only alphabetical characters.

``` r
# Check if strings are alphabetical
isalpha <- strs_isalpha("hello")
print(isalpha)
#> [1] TRUE
```

#### Check if String Contains Only ASCII Characters

The `strs_isascii` function determines whether each element of a
character vector contains only ASCII characters.

``` r
# Check if strings are ASCII
isascii <- strs_isascii("hello")
print(isascii)
#> [1] TRUE
```

#### Check if String Contains Only Decimal Characters

The `strs_isdecimal` function checks whether each element of a character
vector contains only decimal characters.

``` r
# Check if strings are decimal
isdecimal <- strs_isdecimal("12345")
print(isdecimal)
#> [1] TRUE
```

#### Check if String Contains Only Digits

The `strs_isdigit` function checks whether each element of a character
vector contains only digits.

``` r
# Check if strings are digits
isdigit <- strs_isdigit("12345")
print(isdigit)
#> [1] TRUE
```

#### Check if String is in Lowercase

The `strs_islower` function checks whether each element of a character
vector is in lowercase.

``` r
# Check if strings are lowercase
islower <- strs_islower("hello")
print(islower)
#> [1] TRUE
```

#### Check if String Contains Only Numeric Characters

The `strs_isnumeric` function checks whether each element of a character
vector contains only numeric characters.

``` r
# Check if strings are numeric
isnumeric <- strs_isnumeric("12345")
print(isnumeric)
#> [1] TRUE
```

#### Check if String Contains Only Whitespace Characters

The `strs_isspace` function checks whether each element of a character
vector contains only whitespace characters.

``` r
# Check if strings are whitespace
isspace <- strs_isspace("    ")
print(isspace)
#> [1] TRUE
```

#### Check if String is in Title Case

The `strs_istitle` function checks whether each element of a character
vector is title case.

``` r
# Check if strings are title case
istitle <- strs_istitle("This Is Title Case")
print(istitle)
#> [1] TRUE
```

#### Check if String is in Uppercase

The `strs_isupper` function checks whether each element of a character
vector is in uppercase.

``` r
# Check if strings are uppercase
isupper <- strs_isupper("HELLO")
print(isupper)
#> [1] TRUE
```

#### Join Elements into a Single String with a Separator

The `strs_join` function concatenates elements of an iterable using a
separator.

``` r
# Join elements with a separator
joined <- strs_join("-", c("hello", "world"))
print(joined)
#> [1] "hello-world"
```

#### Left-justify String in a Field of a Given Width

The `strs_ljust` function left-justifies each element of a character
vector in a field of a specified width.

``` r
# Left-justify a string
ljust <- strs_ljust("hello", 10)
print(ljust)
#> [1] "     hello"
```

#### Convert String to Lowercase

The `strs_lower` function converts each element of a character vector to
lowercase, based on the specified locale.

``` r
# Convert strings to lowercase
lower <- strs_lower("HELLO WORLD")
print(lower)
#> [1] "hello world"
```

#### Left Strip Characters from a String

The `strs_lstrip` function removes leading characters (spaces by
default) from each element of a character vector.

``` r
# Left-strip characters
lstrip <- strs_lstrip("    hello world")
print(lstrip)
#> [1] "hello world"
```

#### Normalize Whitespace in a String

The `strs_normalize_whitespace` function normalizes the whitespace in
each element of a character vector.

``` r
# Normalize whitespace
normalized <- strs_normalize_whitespace("  hello   world  ")
print(normalized)
#> [1] "hello world"
```

#### Remove a Prefix from a String

The `strs_removeprefix` function removes a specified prefix from the
start of each element of a character vector.

``` r
# Remove a prefix
removed_prefix <- strs_removeprefix("testString", "test")
print(removed_prefix)
#> [1] "String"
```

#### Remove a Suffix from a String

The `strs_removesuffix` function removes a specified suffix from the end
of each element of a character vector.

``` r
# Remove a suffix
removed_suffix <- strs_removesuffix("StringTest", "Test")
print(removed_suffix)
#> [1] "String"
```

#### Replace Substring in a String

The `strs_replace` function replaces all occurrences of a specified
substring in each element of a character vector.

``` r
# Replace a substring
replaced <- strs_replace("hello world", "world", "there")
print(replaced)
#> [1] "hello there"
```

#### Find the Last Occurrence of a Substring in a String

The `strs_rfind` function locates the last occurrence of a specified
substring within each element of a character vector.

``` r
# Find the last occurrence of a substring
last_occurrence <- strs_rfind("hello world", "o")
print(last_occurrence)
#> [1] 8

 # 8
```

#### Right-justify String in a Field of a Given Width

The `strs_rjust` function right-justifies each element of a character
vector in a field of a specified width.

``` r
# Right-justify a string
rjust <- strs_rjust("hello", 10)
print(rjust)
#> [1] "hello     "
```

#### Right Strip Characters from a String

The `strs_rstrip` function removes trailing characters (spaces by
default) from each element of a character vector.

``` r
# Right-strip characters
rstrip <- strs_rstrip("hello world    ")
print(rstrip)
#> [1] "hello world"
```

#### Slice Substrings from a String

The `strs_slice` function extracts substrings from each element of a
character vector, specified by start and stop positions.

``` r
# Slice substrings
sliced <- strs_slice("hello world", 1, 5)
print(sliced)
#> [1] "hello"
```

#### Split String into Substrings

The `strs_split` function splits each element of a character vector into
substrings based on a separator.

``` r
# Split strings into substrings
split <- strs_split("hello world", " ")
print(split)  # list("hello", "world")
#> [[1]]
#> [1] "hello" "world"
```

#### Split String into Lines

The `strs_splitlines` function splits each element of a character vector
into separate lines.

``` r
# Split strings into lines
split_lines <- strs_splitlines("hello\nworld\n")
print(split_lines)  # list("hello", "world")
#> [[1]]
#> [1] "hello" "world"
```

#### Check if String Starts With a Specified Prefix

The `strs_startswith` function determines whether each element of a
character vector starts with a specified prefix.

``` r
# Check if strings start with a prefix
startswith <- strs_startswith("hello world", "hello")
print(startswith)
#> [1] TRUE
```

#### Strip Characters from Both Ends of a String

The `strs_strip` function removes leading and trailing characters
(spaces by default) from each element of a character vector.

``` r
# Strip characters from both ends
strip <- strs_strip("    hello world    ")
print(strip)
#> [1] "hello world"
```

#### Convert String to Title Case

The `strs_title` function converts each element of a character vector to
title case, based on the specified locale.

``` r
# Convert strings to title case
title <- strs_title("hello world")
print(title)
#> [1] "Hello World"
```

#### Convert String to Uppercase

The `strs_upper` function converts each element of a character vector to
uppercase, based on the specified locale.

``` r
# Convert strings to uppercase
upper <- strs_upper("hello world")
print(upper)
#> [1] "HELLO WORLD"
```

## Contributing

We welcome contributions to the **strs** package. If you have
suggestions, bug reports, or want to contribute code, please open an
issue or submit a pull request on our GitHub repository.

- [x] capitalize
- [x] casefold
- [x] center
- [x] count
- [ ] encode
- [x] endswith
- [x] expandtabs
- [x] find
- [ ] format
- [ ] format_map
- [ ] index
- [x] isalnum
- [x] isalpha
- [x] isascii
- [x] isdecimal
- [x] isdigit
- [ ] isidentifier
- [x] islower
- [x] isnumeric
- [ ] isprintable
- [x] isspace
- [x] istitle
- [x] isupper
- [x] join
- [x] ljust
- [x] lower
- [x] lstrip
- [ ] maketrans
- [ ] partition
- [x] removeprefix
- [x] removesuffix
- [x] replace
- [x] rfind
- [ ] rindex
- [x] rjust
- [ ] rpartition
- [ ] rsplit
- [x] rstrip
- [x] split
- [x] splitlines
- [x] startswith
- [x] strip
- [x] swapcase
- [x] title
- [ ] translate
- [x] upper
- [ ] zfill

## License

**strs** is released under the MIT License. See the LICENSE file in the
package’s repository for more details.
