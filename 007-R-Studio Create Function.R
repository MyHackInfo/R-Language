
myplot <- function(data,row){
  Data <-data[row,,drop=F]
  matplot(t(Data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[row],col=c(1:4,6),pch=15:18,horiz=F)
  
}

myplot(Salary,1:4)
