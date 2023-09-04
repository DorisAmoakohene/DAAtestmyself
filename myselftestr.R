if(!file.exists("zip.test.gz")){download.file("https://hastie.su.domains/ElemStatLearn/datasets/SAheart.data","SAheart.data")}
SAheart.dt<-data.table::fread("zip.test.gz")
SAheart.data
str(SAheart.dt)
is.label<- names(SAheart.dt)=="chd"
is.label
SAheart.dt[, is.label]
label.col.i<- which(names(SAheart.dt)=="chd")
label.col.i
SAheart.dt[,..label.col.i ]
SAheart.dt[, - ..label.col.i ]
X.mat <- as.matrix(SAheart.dt[,-..label.col.i ])
X.mat
str(X.mat)

###Test myself in github

if(!file.exists("zip.test.gz")){download.file("https://web.stanford.edu/~hastie/ElemStatLearn/datasets/zip.test.gz","zip.test.gz")}
zip.dt<- data.table::fread("zip.test.gz")
zip.mat <-as.matrix(zip.dt[,-1])
image.number<-1
library(data.table)
data::data.table()

