# Read csv file
stas <- read.csv(file.choose())
stas

# Filtering data frames
# condision way filter.

head(stas)
# Use variable for filter
filter <-stas$Fertility.Rate >3
stas[filter,]

# use condision on it
stas[stas$Fertility.Rate <5,]
stas[stas$Fertility.Rate <5 & stas$Year == 1960,]

# use match bas condision
levels(stas$Region)
stas[stas$Region == "Asia",]
