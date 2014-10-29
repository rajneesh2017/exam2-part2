library(ggplot2)


url <-RCurl::getURL("https://raw.githubusercontent.com/jrwolf/IT497/master/fitstats.csv")

extradf <- read.table(textConnection(url),sep=",",header=T)


SPfor2 <- ggplot(extradf, aes(x=Steps, y=Miles)) + geom_point(shape=1)

SPfor1 <- ggplot(extradf, aes(x=Miles, y=Steps)) + geom_point(shape=1)

