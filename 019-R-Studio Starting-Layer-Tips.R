# Get movies data 
movies <- read.csv(file.choose())
head(movies)

colnames(movies) <- c("File","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
str(movies)
movies$Year <-factor(movies$Year)
str(movies)

#---- Starting Layer Tips

t <- ggplot(data=movies,aes(x=AudienceRating))
t + geom_histogram(binwidth = 10,fill='White',colour="Blue")

# Another way
t <- ggplot(data=movies)
t + geom_histogram(binwidth = 10,
                   aes(x=AudienceRating),
                   fill="White",colour="Blue")

# 1
t + geom_histogram(binwidth = 10,
                   aes(x=CriticRating),
                   fill="White",colour="Blue")
# 2
t <-ggplot()