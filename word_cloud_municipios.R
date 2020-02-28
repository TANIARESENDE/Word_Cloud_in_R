install.packages("wordcloud")
library(wordcloud)

quantidade <- read.csv("C:/R/quantidade.csv",sep=";",header=TRUE)
head(quantidade)

wordcloud(words = quantidade$Estado, freq = quantidade$Qtd_municipio, scale=c(1,.5),min.freq = 1,
          max.words=900, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))

