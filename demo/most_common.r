library(idgaf)
library(ggplot2)


### Simple table
commit <- data.frame(commit=fuck$commit, nchar(fuck$commit))

commit <- commit[order(-commit$nchar), ]
head(commit)

commits <- summary(commit)
commits



### Most common
commit <- sub(tmp, pattern=":.*", replacement="")

tmp <- gsub(x=commits[1:6, 1], pattern=" +", replacement=" ")

count <- sub(tmp, pattern="^([^:]+)", replacement="")
count <- sub(count, pattern=":", replacement="")

df <- data.frame(commit=factor(commit, levels=commit), count=as.numeric(count))

ggplot(df, aes(as.factor(commit), count)) + 
  geom_bar(stat="identity") + 
  xlab("Commit Message") + 
  ylab("Count")

