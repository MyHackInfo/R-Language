# Exploring data 
stas <- read.csv(file.choose())
stas

# Count number of row and col
nrow(stas)
ncol(stas)

# Top 6 row and as you want n=10.
head(stas,n=10)
# Down 6 row and as you want n=10.
tail(stas,n=10)

str(stas) # srt() runif()
runif(stas)
summary(stas)

