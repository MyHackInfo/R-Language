# -- Asethetics
library(ggplot2)

# Get movies data 
movies <- read.csv(file.choose())
head(movies)

colnames(movies) <- c("File","Genre","CriticRating","AudienceRating","BudgetMillions","Year")

movies$Year <-factor(movies$Year)

# --- Start 
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating))

# Add geometry
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating)) +
    geom_point()  

#-- add colour
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                       colour=Genre)) +
  geom_point()  

#-- Add size
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                       colour=Genre,size=Genre)) +
  geom_point()  

#-- Add size - better way
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                       colour=Genre,size=BudgetMillions)) +
  geom_point()  
