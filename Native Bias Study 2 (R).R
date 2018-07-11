library(tidyverse)
library(magrittr)

#Set working directory
#setwd("~/Documents/Github/Native Bias")

#Load in Data
StudyTwoData <- read.csv("Native Bias Study 2 (Names).csv")
View(StudyTwoData)
str(StudyTwoData)

#Removed the first 17 columns
StudyTwoData <- StudyTwoData[,-1:-17]

#Created a new object with just the questions from the survey
Questions <- StudyTwoData[1:2,]
View(Questions)
str(Questions)
Questions
StudyTwoData <- StudyTwoData[-1:-2,]

#converting a factor to a numeric while preserving the values
StudyTwoData[,2]
as.numeric(StudyTwoData[,2])

StudyTwoData[,2] <- as.numeric(levels(StudyTwoData[,2]))[StudyTwoData[,2]]
