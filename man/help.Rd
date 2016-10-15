\name{?}
\alias{?}
\title{Documentation Shortcuts}
\usage{
"?"(e1, e2)
}
\arguments{
\item{e1}{The type of documentation}

\item{e2}{The topic of documentation}
}
\description{
`?` when used interactively continues to work as before, accessing the R
help pages for the topic requested.

When used within a R expression it can be used to add a
type annotation. The annotations are syntactically valid R code rather than
comments, which provides additional assurance they are specified properly.
However this package does not do anything with the type annotations, they
have no effect on the calculated result.
}
\seealso{
\code{\link[utils]{?}}
}
\examples{
# Function arguments can be annotated with types
f <- function(x = 1 ? numeric) {
  x + 1
}

# Default arguments can also be annotated (the `=` is required however)
f <- function(x = ? numeric) {
  x + 1
}

# Function statements can be annotated with types
f <- function(x = "Yay") {
  paste(x, "types!") ? character
}

# Function return values can be annotated with types
f <- function(x = 1) {
  x %% 2 == 0
} ? boolean
}
