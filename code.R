dat <- read.csv("femaleMiceWeights.csv")
colnames(dat)
dat[12,2]
dat[11,2]
length(dat[,1])
hf_rows<-which(dat[,1]=="hf")
hf<- dat[hf_rows,2]
mean(hf)
set.seed(1)
sample(hf,1,FALSE)
