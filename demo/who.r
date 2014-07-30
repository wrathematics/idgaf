library(idgaf)
library(ggplot2)

# step up your game, senpai
nfucks("hadley")


### Most by user across all of his/her repos
tabled <- sort(table(fuck$user), decreasing=TRUE)
tabled.head <- head(tabled)
tabled.head

tabled.names <- factor(names(tabled.head), levels=names(tabled.head))
df <- data.frame(user=tabled.names, count=tabled.head)

ggplot(df, aes(user, count)) + 
  geom_bar(stat="identity") +
  xlab("GitHub User") + 
  ylab("Number of F-Bombs in User's Commit Messages")


### Most by "user/repo"
repo <- paste(fuck$user, "/", fuck$repo, sep="")

tabled <- sort(table(repo), decreasing=TRUE)
tabled.head <- head(tabled)

tabled.names <- factor(names(tabled.head), levels=names(tabled.head))
df <- data.frame(user=tabled.names, count=tabled.head)

ggplot(df, aes(user, count)) + 
  geom_bar(stat="identity") +
  xlab("GitHub Repo") + 
  ylab("Number of F-Bombs in Repo's Commit Messages") +
  theme(axis.text.x=element_text(angle=25, hjust=1))

