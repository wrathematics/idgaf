library(idgaf)

commit <- data.frame(commit=fuck$commit, nchar(fuck$commit))

commit <- commit[order(-commit$nchar), ]
head(commit)

summary(commit)
