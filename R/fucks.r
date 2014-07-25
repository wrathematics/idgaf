nfucks <- function(user, repo)
{
  if (missing(user) && missing(repo))
    stop("At least one of 'user' or 'repo' must be supplied.")
  else if (missing(user))
  {
    tabled <- sort(table(fuck$repo), decreasing=TRUE)
    query <- repo
  }
  else if (missing(repo))
  {
    tabled <- sort(table(fuck$user), decreasing=TRUE)
    query <- user
  }
  else
  {
    fuckers <- paste(fuck$user, "/", fuck$repo, sep="")
    tabled <- table(fuckers)
    query <- paste(user, "/", repo, sep="")
  }
  
  ind <- which(names(tabled) == query)
  ret <- tabled[ind]
  
  names(ret) <- NULL
  
  if (length(ret) == 0)
    return(0)
  else
    return(ret)
}

