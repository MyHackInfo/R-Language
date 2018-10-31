# Get movies data 
movies <- read.csv(file.choose())
head(movies)

colnames(movies) <- c("File","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
str(movies)
movies$Year <-factor(movies$Year)
str(movies)

# ---- Theme 
o <- ggplot(data=movies,aes(x=BudgetMillions))
h <- o + geom_histogram(binwidth = 10,aes(fill=Genre),colour="Black")

# Axes Labels
h + 
  xlab("Money Axis")+
  ylab("Number of Moives")

# Label formatting
h + 
  xlab("Money Axis")+
  ylab("Number of Moives")+
  theme(axis.title.x = element_text(colour="DarkGreen",size=30),
        axis.title.y = element_text(colour="Red",size=30))

# Tick mark Formatting
h + 
  xlab("Money Axis")+
  ylab("Number of Moives")+
  theme(axis.title.x = element_text(colour="DarkGreen",size=30),
        axis.title.y = element_text(colour="Red",size=30),
        axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20))

# Legend formatting
h + 
  xlab("Money Axis")+
  ylab("Number of Moives")+
  theme(axis.title.x = element_text(colour="DarkGreen",size=30),
        axis.title.y = element_text(colour="Red",size=30),
        axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        
        legend.title = element_text(size=30),
        legend.text = element_text(size=20))

# Title plot
h + 
  xlab("Money Axis")+
  ylab("Number of Moives")+
  ggtitle("Movie Budeget Distribution")+
  theme(axis.title.x = element_text(colour="DarkGreen",size=30),
        axis.title.y = element_text(colour="Red",size=30),
        axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        
        legend.title = element_text(size=30),
        legend.text = element_text(size=20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        
        plot.title = element_text(colour="DarkBlue",
                                  size=40,
                                  family = "Courier"))



