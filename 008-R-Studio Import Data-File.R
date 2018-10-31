# How to read data-file or import data-file
# Two way we do this think.

# 1-> Select File Manually
stas <- read.csv(file.choose())

stas

# 2-> Set Working-dir and Read Data-file.
getwd()
setwd("C:/Users/narsi/Documents")
getwd()
rm(stas)
stas <- read.csv("Section5-Homework-Data.csv")
stas
