library(idgaf)

# step up your game, senpai
nfucks("hadley")


### Most by user across all of his/her repos
tabled <- sort(table(fuck$user), decreasing=TRUE)
head(tabled)


### Most by "user/repo"
repo <- paste(fuck$user, "/", fuck$repo, sep="")

repo.tabled <- sort(table(repo), decreasing=TRUE)
head(repo.tabled)

barplot(head(repo.tabled))
