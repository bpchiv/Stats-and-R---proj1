dat <- read.csv("femaleMiceWeights.csv")

library(dplyr)

controls <- filter(dat,Diet=="chow") %>% select(Bodyweight) %>% unlist
library(downloader)
url="https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- basename(url)
download(url,filename)

msleep_dat <- read.csv("msleep_ggplot2.csv")
class(msleep_dat)
primates <- filter(msleep_dat,order=="Primates")
nrow(primates)
class(primates)
primates_sleep <- filter(msleep_dat,order=="Primates") %>% select(sleep_total) %>% unlist
class(primates_sleep)
mean(primates_sleep)


primates2 <- filter(msleep_dat,order=="Primates") %>% summarise(mean=mean(sleep_total))
primates2
