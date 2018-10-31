# Get movies data 
movies <- read.csv(file.choose())
head(movies)

colnames(movies) <- c("File","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
str(movies)
movies$Year <-factor(movies$Year)
str(movies)

#---- Plotting With Layers
# Here use object that store data.frame
q <- ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                            colour=Genre,size=BudgetMillions))

# Point
q + geom_point()

# ------ Overriding Aesthetics

# -- Size Overriding
q + geom_point(aes(size= CriticRating))

# -- colour Overriding
q + geom_point(aes(colour=BudgetMillions))
q + geom_point()

# -- x value Overriding 
# Add xlabel
q + geom_point(aes(x=BudgetMillions))+ 
    xlab("Budget Million $$")

# --Reduce line size
q + geom_line(size=1) + geom_point()

