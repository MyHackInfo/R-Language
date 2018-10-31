# Get movies data 
movies <- read.csv(file.choose())
head(movies)

colnames(movies) <- c("File","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
str(movies)
movies$Year <-factor(movies$Year)
str(movies)

#-----Statistical transformations
?geom_smooth

u <- ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,colour=Genre))
u + geom_point() + geom_smooth(fill=NA)

# Boxplots 
u <-ggplot(data=movies,aes(x=Genre,y=AudienceRating,colour=Genre))

u + geom_boxplot()
u + geom_boxplot(size=1.2)
u + geom_boxplot(size=1.2) + geom_point()
# tip /hack
u + geom_boxplot(size=1.2) + geom_jitter()

u + geom_jitter() + geom_boxplot(size=1.2,alpha=0.5)



