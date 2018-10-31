# Get movies data 
movies <- read.csv(file.choose())
head(movies)

colnames(movies) <- c("File","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
str(movies)
movies$Year <-factor(movies$Year)
str(movies)

#---- Plotting With Layers
# Here use object that store data.frame
p <- ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                            colour=Genre,size=BudgetMillions))

# Point
p + geom_point()

#- lines
p + geom_line()

# Multiple layers
p + geom_point() + geom_line()

p + geom_line() + geom_point()  