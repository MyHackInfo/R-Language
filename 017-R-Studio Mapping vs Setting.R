# Get movies data 
movies <- read.csv(file.choose())
head(movies)

colnames(movies) <- c("File","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
str(movies)
movies$Year <-factor(movies$Year)
str(movies)

#---Mapping VS Setting
r <- ggplot(data=movies , aes(x=CriticRating,y=AudienceRating))
r + geom_point()

# add Colour
#1. Mapping (what we've done so far)
r + geom_point(aes(colour=Genre))
#2.Setting 
r + geom_point(colour="DarkGreen")
# error:
# r + geom_point(aes(colour="DarkGreen"))

# 1. Mapping
r + geom_point(aes(size=BudgetMillions))
# 2. Setting
r + geom_point(size=10)
# error:
# r + geom_point(aes(size=10))
