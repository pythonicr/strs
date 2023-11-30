# strs

This package provides string functions that are analogous to those used by
[Python's str
class](https://docs.python.org/3/library/stdtypes.html#string-methods). All
functions use [stringi](https://stringi.gagolewski.com/index.html) or
[stringr](https://stringr.tidyverse.org/), so this package is mostly a
convenience wrapper for anyone regularly switching between Python and R.

## Todo

- Improve the documentation
  - If the function is implemented it should do exactly the same thing as the
    Python equivalent.

- Implement public methods
  - [x] capitalize
  - [x] casefold
  - [x] center
  - [x] count
  - [ ] encode
  - [x] endswith
  - [x] expandtabs
  - [x] find
  - [x] format/format_map
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
  - [ ] swapcase
  - [x] title
  - [ ] translate
  - [x] upper
  - [ ] zfill

- Implement dunder methods
  - [x] contains
  - [ ] add
  - [ ] mul

## Additional methods

- normalize_whitespace
- wrap

## Links

- [Python string methods](https://docs.python.org/3/library/stdtypes.html#string-methods)
- [Basic stringi](https://stringi.gagolewski.com/weave/basic_operations.html)
