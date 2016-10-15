\name{removeTypes}
\alias{removeTypes}
\alias{remove_types}
\title{Remove types from a language object}
\usage{
removeTypes(x)

remove_types(x)
}
\arguments{
\item{x}{R language object}
}
\description{
These functions provide the same purpose, to remove type annotation from any language object.
}
\examples{
# Function arguments can be annotated with types
f <- function(x = 1 ? numeric) {
  x + 1
}

# The types can then be removed if needed
remove_types(f)

# A camelCase function is also available with the same behavior
removeTypes(f)

# They also works on quoted code
remove_types(quote(x + 1 ? numeric))

# Or expressions
remove_types(expression(x + 1 ? numeric))
}
