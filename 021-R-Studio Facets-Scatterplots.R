# Get movies data 
movies <- read.csv(file.choose())
head(movies)

colnames(movies) <- c("File","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
str(movies)
movies$Year <-factor(movies$Year)
str(movies)

#----- Facets
v <-ggplot(data=movies,aes(x=BudgetMillions))
v + geom_histogram(binwidth = 10,aes(fill=Genre),
                   colour="Black") +
      facet_grid(Genre~.,scales="free")

# Scatterplots:
w <-ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,colour=Genre))
w + geom_point(size=3)

# facets
w + geom_point(size=3)+
  facet_grid(Genre~.)

w + geom_point(size=3)+
  facet_grid(.~Year)


w + geom_point(size=3)+
  facet_grid(Genre~Year)


w + geom_point(size=3)+
  geom_smooth()+
  facet_grid(Genre~Year)

w + geom_point(aes(size=BudgetMillions))+
  geom_smooth()+
  facet_grid(Genre~Year)
