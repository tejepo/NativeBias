library(tidyverse)
library(magrittr)

#Set working directory
setwd("~/Documents/GitHub/NativeBias")

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

#Recoding a factor to a numeric. This avoids ending up with numeric values that represent the level codes and instead leaves you with the actual values displayed. Useful!
StudyTwoData[,2] <- as.numeric(levels(StudyTwoData[,2]))[StudyTwoData[,2]]

StudyTwoData[,3]
as.numeric(StudyTwoData[,3])
StudyTwoData[,3] <- as.numeric(levels(StudyTwoData[,3]))[StudyTwoData[,3]]

StudyTwoData[,4]
as.numeric(StudyTwoData[,4])
StudyTwoData[,4] <- as.numeric(levels(StudyTwoData[,4]))[StudyTwoData[,4]]

StudyTwoData[,5]
as.numeric(StudyTwoData[,5])
StudyTwoData[,5] <- as.numeric(levels(StudyTwoData[,5]))[StudyTwoData[,5]]

str(StudyTwoData)

#Attempt 
#StudyTwoData[,6] <- ifelse(StudyTwoData[,6] == "Strongly Disagree", 1, ifelse(StudyTwoData[,6] == "Disagree", 2, ifelse(StudyTwoData[,6] == "Somewhat Disagree", 3, ifelse(StudyTwoData[,6] == "Neither Disagree nor Agree", 4, ifelse(StudyTwoData[,6]== "Somewhat Agree", 5,ifelse(StudyTwoData[,6] == "Agree", 6, ifelse(StudyTwoData[,6] == "Strongly Agree", 6,3113)))))))

#Attempt
#StudyTwoData[,6] <- ifelse(StudyTwoData[,6] == "Strongly Disagree", 1, ifelse(StudyTwoData[,6] == "Disagree", 2, ifelse(StudyTwoData[,6] == "Somewhat Disagree", 3, ifelse(StudyTwoData[,6] == "Neither Disagree nor Agree", 4, ifelse(StudyTwoData[,6]== "Somewhat Agree", 5,ifelse(StudyTwoData[,6] == "Agree", 6, ifelse(StudyTwoData[,6] == "Strongly Agree", 7,)))))))

install.packages("car")
library(car)

StudyTwoData$Nationalism_Nationalism_1<-recode(StudyTwoData$Nationalism_Nationalism_1,"'Strongly Disagree'=1")
StudyTwoData$Nationalism_Nationalism_1<-recode(StudyTwoData$Nationalism_Nationalism_1,"'Disagree'=2")
StudyTwoData$Nationalism_Nationalism_1<-recode(StudyTwoData$Nationalism_Nationalism_1,"'Somewhat Disagree'=3")
StudyTwoData$Nationalism_Nationalism_1<-recode(StudyTwoData$Nationalism_Nationalism_1,"'Neither Disagree nor Agree'=4")
StudyTwoData$Nationalism_Nationalism_1<-recode(StudyTwoData$Nationalism_Nationalism_1,"'Somewhat Agree'=5")
StudyTwoData$Nationalism_Nationalism_1<-recode(StudyTwoData$Nationalism_Nationalism_1,"'Agree'=6")
StudyTwoData$Nationalism_Nationalism_1<-recode(StudyTwoData$Nationalism_Nationalism_1,"'Strongly Agree'=7")
