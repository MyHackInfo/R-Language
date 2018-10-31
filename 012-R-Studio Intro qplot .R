# first install ggplot2
install.packages("ggplot2")

# after that active this 
library(ggplot2)
??qpplot

stats <- read.csv(file.choose())
head(stats)

# Work of qplot
qplot(data=stats,x=Fertility.Rate)
qplot(data=stats,x=Fertility.Rate,y=Year)
qplot(data=stats,x=Fertility.Rate,y=Year,size=I(3))
qplot(data=stats,x=Fertility.Rate,y=Year,size=I(3),
      colour=I('blue'))
qplot(data=stats,x=Fertility.Rate,y=Year,geom='boxplot')

#----Visualizing
qplot(data=stats,x=Fertility.Rate,y=Year)
qplot(data=stats,x=Fertility.Rate,y=Year,
        colour=Region,size=I(5))
# Shapes
qplot(data=stats,x=Fertility.Rate,y=Year,
      colour=Region,size=I(5),shape=I(5))

# Transparency
qplot(data=stats,x=Fertility.Rate,y=Year,
      colour=Region,size=I(5),shape=I(5),
      alpha=I(0.1))

# Title
qplot(data=stats,x=Fertility.Rate,y=Year,
      colour=Region,size=I(5),shape=I(5),
      alpha=I(0.1),main="Year VS Feritility.Rate")

