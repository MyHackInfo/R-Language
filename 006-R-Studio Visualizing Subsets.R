# Subsetting of matrix

# Read Basketball data
read.csv(file.choose())

Games
Games[1:3,6:8]
Games[c(1,4,6)]
Games[c(1,4,6),]
Games[c(1,4,6),9:8]
Games[c(1,4,6),c(1,4,5)]
Games[,c("2008","2013")]
Games[1,]
Games[,1]
Games[1,1]
Games[]

is.matrix(Games[1,])
is.matrix(Games[1,1])

Games[1,,drop=F]
