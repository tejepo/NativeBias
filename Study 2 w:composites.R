library(dplyr)
install.packages("haven")
library(haven)

path <- file.path("~/Desktop/UW/Summer '18/CultureColab/Native Bias/Data/Study_2_w_composites.sav")
studytwodata <- read_sav(path)

lm1 <- lm(DV1_4 ~ SES + GenKnow_mean, studytwodata)
lm2 <- lm(DV1_4 ~ SES + GenKnow_mean + SES*GenKnow_mean, studytwodata)

summary(lm1)
summary(lm2)
  
studytwodata$DV1_4

lm3 <- lm(DV1_5 ~ SES + GenKnow_mean, studytwodata)
lm4 <- lm(DV1_5 ~ SES + GenKnow_mean + SES*GenKnow_mean, studytwodata)

summary(lm3)
summary(lm4)

plot(studytwodata$DV1_4, studytwodata$DV1_5)

library(ggplot2)

ggplot(studytwodata, aes(x= DV1_5, y = DV1_4)) +
  geom_point(position = position_jitter(width = 0.25)) +
  ylab("Abolish Columbus Day") +
  xlab("Create Indigenous Peoples' Day") +
  scale_y_continuous(limits = c(0, NA))

tail(studytwodata, 15)
studytwonew <- studytwodata[,505:757]
View(studytwonew)

reduceddataset <- cbind(studytwodata$DV1_4, studytwodata$DV1_5, studytwodata$CultRacism_composite, studytwodata$BrokenStereotypes, studytwodata$Colo )
