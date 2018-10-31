?matplot
# matplot use for graphical view of data
# t() function use for transperensi.

# Read Basketball data
read.csv(file.choose())

matplot(t(FieldGoals/FieldGoalAttempts),type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players,col=c(1:4,6),pch=15:18,horiz=F)



