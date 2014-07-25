library(idgaf)
library(ngram)

all <- concat(fuck$commit)

ng <- ngram(all, n=3)
ng

babble(ng, 150)
