library(tidyverse)
library(magrittr)

#Set working directory
#setwd("~/Documents/Github/Native Bias")

#Load in Data
StudyTwoData <- read.csv("Native Bias Study 2 (Names).csv")
View(StudyTwoData)
str(StudyTwoData)

StudyTwoData <- StudyTwoData[,-1:-17]

Questions <- StudyTwoData[1,]
View(Questions)
str(Questions)
Questions
