library(dplyr)
#install.packages("haven")
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

reduceddataset <- cbind(studytwodata$DV1_4, studytwodata$DV1_5, studytwodata$CultRacism_composite, studytwodata$BrokenStereotypes, studytwodata$Colorblind, studytwodata$RomanticStereotypes, studytwodata$Contact, studytwodata$Extended, studytwodata$FamProducts_sum, studytwodata$ProductsUsed_sum, studytwodata$FamiliarExpressions_sum, studytwodata$Native_SDOadaptation, studytwodata$Conflict, studytwodata$SLB_comp, studytwodata$RacismMini_comp, studytwodata$Nationalism, studytwodata$Tough, studytwodata$Anti_fem, studytwodata$SES, studytwodata$Invisibility, studytwodata$PastGuilt, studytwodata$HistoricKnow_mean, studytwodata$ContempKnow_mean, studytwodata$GenKnow_mean, studytwodata$MaterialConcern, studytwodata$ContemporaryInvisibility, studytwodata$Race, studytwodata$Intimacy)

View(reduceddataset)
colnames(reduceddataset) <-  c("Columbus Day", "Indigenous Peoples' Day", "Cultural Racism", "Broken Stereotypes", "Colorblindness", "Romantic Stereotypes", "Contact", "Extended", "Familiar Products (sum)", "Products Used (sum)", "FamiliarExpressions (sum)","Native SDO adaptation", "Conflict", "SLB (comp)", "Racism Mini (comp)", "Nationalism", "Tough", "Anti Feminist", "College Education", "Inivisibility", "Past Guilt", "Historic Knowledge (%)", "Contemporary Knowledge (%)", "General Knowledge (%)", "Material Concerns", "Contemporary Invisibility", "Race", "Intimacy")
