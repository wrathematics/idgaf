\name{nfucks}
\alias{nfucks}

\title{Number of Fucks for a User}

\description{
  This function gets the number of times a given user and/or repository
  had the word "fuck" in a commit.
}
\usage{
  nfucks(user, repo)
}
\arguments{
  \item{user}{The GitHub username.}
  \item{repo}{The GitHub repository}
}
\details{
  At least one of \code{user} or \code{repo} must be specified.  If 
  both are, then the user/repo combination is searched.
}
\seealso{
  \code{\link{fuck-data}}
}
\examples{
\dontrun{
library(idgaf)

nfucks(user="hadley")
}
}


