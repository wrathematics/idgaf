library(idgaf)
library(ggplot2)

tabledate <- table(fuck$date)

df <- data.frame(date=as.Date(names(tabledate), format="%Y-%m-%d"), count=tabledate)
df$count.date <- NULL


ggplot(df, aes(x=date, y=count.Freq)) + 
  geom_point() + 
  geom_smooth(aes(group=1)) + 
  xlab("") + ylab("") + ggtitle("Number of Fucks Given")

