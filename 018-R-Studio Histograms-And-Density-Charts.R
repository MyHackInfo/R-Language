# Get movies data 
movies <- read.csv(file.choose())
head(movies)

colnames(movies) <- c("File","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
str(movies)
movies$Year <-factor(movies$Year)
str(movies)

#-----Histograms and Density CHarts
s <- ggplot(data=movies,aes(x= BudgetMillions))
s + geom_histogram(binwidth = 10)


# add colour
s + geom_histogram(binwidth = 10,aes(fill=Genre))

# add a border
s + geom_histogram(binwidth = 10,aes(fill=Genre),colour="Black")

# Sometime you may need density charts:
s + geom_density(aes(fill=Genre))

s + geom_density(aes(fill=Genre),position = "fill")
?geom_density