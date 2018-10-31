# How to use the $ sign
# Its work on data-frame 
# Its use for acces value from data-frame

stas <- read.csv(file.choose())
stas
str(stas)

# Use for acces value
stas[2,3]
stas$Region[5]
 
# levels() function its use for descripe all levels name.
levels(stas$Region)

#---Basic Operation with Data-Frame
stas[1:10,] # subsetting
stas[c(3,30),]

# Remember how to [] work:
# In Matrix first row not work proper
# use drop=F extra parameter
# Same as in Data-Frame one col not work proper
# so use drop=F
stas[1,]  # row work on Data-Frame
stas[,1]  # col not work in data-frame

# How check its work and not work 
is.data.frame(stas[1,])
is.data.frame(stas[,1])
is.data.frame(stas[,1,drop=F])
#____________________________

# Multiply columns
head(stas)
stas$Year * stas$Fertility.Rate

# Add colums
stas$more <- stas$Year * stas$Fertility.Rate
head(stas)
 
# Remove a colums
stas$more <- NULL
head(stas)
