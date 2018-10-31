# Get movies data 
movies <- read.csv(file.choose())
head(movies)

# Change the coloumns name
colnames(movies) <- c("File","Genre","CriticRating","AudienceRating","BudgetMillions","Year")

# See What data say
head(movies)
tail(movies)
str(movies)
summary(movies)

# Create factor on Year coloumns
# factor use for create levels 
factor(movies$Year)

movies$Year <-factor(movies$Year)