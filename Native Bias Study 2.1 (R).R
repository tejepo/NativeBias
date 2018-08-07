library(tidyverse)
library(magrittr)

#Set working directory
setwd("~/Documents/GitHub/Native Bias")

#Load in Data
StudyTwoData <- read.csv("Native Bias Study 2 (Names).csv")
View(StudyTwoData)
str(StudyTwoData)

#Removed the first 17 columns
StudyTwoData <- StudyTwoData[,-1:-17]

#Created a new object with just the questions from the survey
Questions <- StudyTwoData[1,] 
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

#With the tidyverse package you end up not needing "car" (yet anyway). tidyverse is a package that contains several other useful packages including dplyr. With the dplyr recode function you can consolidate your many lines of code into just one.
StudyTwoData$Nationalism_Nationalism_1 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_1, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6, "Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_1<- as.numeric(StudyTwoData$Nationalism_Nationalism_1)
StudyTwoData$Nationalism_Nationalism_2 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_2, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_2<- as.numeric(StudyTwoData$Nationalism_Nationalism_2)

StudyTwoData[,22]
as.numeric(StudyTwoData[,22])
StudyTwoData[,22] <- as.numeric(levels(StudyTwoData[,22]))[StudyTwoData[,22]]

StudyTwoData[,23]
as.numeric(StudyTwoData[,23])
StudyTwoData[,23] <- as.numeric(levels(StudyTwoData[,23]))[StudyTwoData[,23]]

StudyTwoData[,24]
as.numeric(StudyTwoData[,24])
StudyTwoData[,24] <- as.numeric(levels(StudyTwoData[,24]))[StudyTwoData[,24]]

StudyTwoData[,25]
as.numeric(StudyTwoData[,25])
StudyTwoData[,25] <- as.numeric(levels(StudyTwoData[,25]))[StudyTwoData[,25]]

StudyTwoData[,38]
as.numeric(StudyTwoData[,38])
StudyTwoData[,38] <- as.numeric(levels(StudyTwoData[,38]))[StudyTwoData[,38]]

StudyTwoData[,39]
as.numeric(StudyTwoData[,39])
StudyTwoData[,39] <- as.numeric(levels(StudyTwoData[,39]))[StudyTwoData[,39]]

StudyTwoData[,40]
as.numeric(StudyTwoData[,40])
StudyTwoData[,40] <- as.numeric(levels(StudyTwoData[,40]))[StudyTwoData[,40]]

StudyTwoData[,41]
as.numeric(StudyTwoData[,41])
StudyTwoData[,41] <- as.numeric(levels(StudyTwoData[,41]))[StudyTwoData[,41]]

StudyTwoData[,50]
as.numeric(StudyTwoData[,50])
StudyTwoData[,50] <- as.numeric(levels(StudyTwoData[,50]))[StudyTwoData[,50]]

StudyTwoData[,51]
as.numeric(StudyTwoData[,51])
StudyTwoData[,51] <- as.numeric(levels(StudyTwoData[,51]))[StudyTwoData[,51]]

StudyTwoData[,52]
as.numeric(StudyTwoData[,52])
StudyTwoData[,52] <- as.numeric(levels(StudyTwoData[,52]))[StudyTwoData[,52]]

StudyTwoData[,53]
as.numeric(StudyTwoData[,53])
StudyTwoData[,53] <- as.numeric(levels(StudyTwoData[,53]))[StudyTwoData[,53]]

StudyTwoData[,70]
as.numeric(StudyTwoData[,70])
StudyTwoData[,70] <- as.numeric(levels(StudyTwoData[,70]))[StudyTwoData[,70]]

StudyTwoData[,71]
as.numeric(StudyTwoData[,71])
StudyTwoData[,71] <- as.numeric(levels(StudyTwoData[,71]))[StudyTwoData[,71]]

StudyTwoData[,72]
as.numeric(StudyTwoData[,72])
StudyTwoData[,72] <- as.numeric(levels(StudyTwoData[,72]))[StudyTwoData[,72]]

StudyTwoData[,73]
as.numeric(StudyTwoData[,73])
StudyTwoData[,73] <- as.numeric(levels(StudyTwoData[,73]))[StudyTwoData[,73]]

StudyTwoData[,74]
as.numeric(StudyTwoData[,74])
StudyTwoData[,74] <- as.numeric(levels(StudyTwoData[,74]))[StudyTwoData[,74]]

StudyTwoData[,75]
as.numeric(StudyTwoData[,75])
StudyTwoData[,75] <- as.numeric(levels(StudyTwoData[,75]))[StudyTwoData[,75]]

StudyTwoData[,76]
as.numeric(StudyTwoData[,76])
StudyTwoData[,76] <- as.numeric(levels(StudyTwoData[,76]))[StudyTwoData[,76]]

StudyTwoData[,77]
as.numeric(StudyTwoData[,77])
StudyTwoData[,77] <- as.numeric(levels(StudyTwoData[,77]))[StudyTwoData[,77]]

StudyTwoData[,78]
as.numeric(StudyTwoData[,78])
StudyTwoData[,78] <- as.numeric(levels(StudyTwoData[,78]))[StudyTwoData[,78]]

StudyTwoData[,79]
as.numeric(StudyTwoData[,79])
StudyTwoData[,79] <- as.numeric(levels(StudyTwoData[,79]))[StudyTwoData[,79]]

StudyTwoData[,80]
as.numeric(StudyTwoData[,80])
StudyTwoData[,80] <- as.numeric(levels(StudyTwoData[,80]))[StudyTwoData[,80]]

StudyTwoData[,81]
as.numeric(StudyTwoData[,81])
StudyTwoData[,81] <- as.numeric(levels(StudyTwoData[,81]))[StudyTwoData[,81]]

StudyTwoData[,82]
as.numeric(StudyTwoData[,82])
StudyTwoData[,82] <- as.numeric(levels(StudyTwoData[,82]))[StudyTwoData[,82]]

StudyTwoData[,94]
as.numeric(StudyTwoData[,94])
StudyTwoData[,94] <- as.numeric(levels(StudyTwoData[,94]))[StudyTwoData[,94]]

StudyTwoData[,95]
as.numeric(StudyTwoData[,95])
StudyTwoData[,95] <- as.numeric(levels(StudyTwoData[,95]))[StudyTwoData[,95]]

StudyTwoData[,96]
as.numeric(StudyTwoData[,96])
StudyTwoData[,96] <- as.numeric(levels(StudyTwoData[,96]))[StudyTwoData[,96]]

StudyTwoData[,97]
as.numeric(StudyTwoData[,97])
StudyTwoData[,97] <- as.numeric(levels(StudyTwoData[,97]))[StudyTwoData[,97]]

StudyTwoData[,112]
as.numeric(StudyTwoData[,112])
StudyTwoData[,112] <- as.numeric(levels(StudyTwoData[,112]))[StudyTwoData[,112]]

StudyTwoData[,113]
as.numeric(StudyTwoData[,113])
StudyTwoData[,113] <- as.numeric(levels(StudyTwoData[,113]))[StudyTwoData[,113]]

StudyTwoData[,114]
as.numeric(StudyTwoData[,114])
StudyTwoData[,114] <- as.numeric(levels(StudyTwoData[,114]))[StudyTwoData[,114]]

StudyTwoData[,115]
as.numeric(StudyTwoData[,115])
StudyTwoData[,115] <- as.numeric(levels(StudyTwoData[,115]))[StudyTwoData[,115]]

StudyTwoData[,124]
as.numeric(StudyTwoData[,124])
StudyTwoData[,124] <- as.numeric(levels(StudyTwoData[,124]))[StudyTwoData[,124]]

StudyTwoData[,125]
as.numeric(StudyTwoData[,125])
StudyTwoData[,125] <- as.numeric(levels(StudyTwoData[,125]))[StudyTwoData[,125]]

StudyTwoData[,126]
as.numeric(StudyTwoData[,126])
StudyTwoData[,126] <- as.numeric(levels(StudyTwoData[,126]))[StudyTwoData[,126]]

StudyTwoData[,127]
as.numeric(StudyTwoData[,127])
StudyTwoData[,127] <- as.numeric(levels(StudyTwoData[,127]))[StudyTwoData[,127]]

StudyTwoData[,134]
as.numeric(StudyTwoData[,134])
StudyTwoData[,134] <- as.numeric(levels(StudyTwoData[,134]))[StudyTwoData[,134]]

StudyTwoData[,135]
as.numeric(StudyTwoData[,135])
StudyTwoData[,135] <- as.numeric(levels(StudyTwoData[,135]))[StudyTwoData[,135]]

StudyTwoData[,136]
as.numeric(StudyTwoData[,136])
StudyTwoData[,136] <- as.numeric(levels(StudyTwoData[,136]))[StudyTwoData[,136]]

StudyTwoData[,137]
as.numeric(StudyTwoData[,137])
StudyTwoData[,137] <- as.numeric(levels(StudyTwoData[,137]))[StudyTwoData[,137]]

StudyTwoData[,140]
as.numeric(StudyTwoData[,140])
StudyTwoData[,140] <- as.numeric(levels(StudyTwoData[,140]))[StudyTwoData[,140]]

StudyTwoData[,141]
as.numeric(StudyTwoData[,141])
StudyTwoData[,141] <- as.numeric(levels(StudyTwoData[,141]))[StudyTwoData[,141]]

StudyTwoData[,142]
as.numeric(StudyTwoData[,142])
StudyTwoData[,142] <- as.numeric(levels(StudyTwoData[,142]))[StudyTwoData[,142]]

StudyTwoData[,143]
as.numeric(StudyTwoData[,143])
StudyTwoData[,143] <- as.numeric(levels(StudyTwoData[,143]))[StudyTwoData[,143]]

StudyTwoData[,157]
as.numeric(StudyTwoData[,157])
StudyTwoData[,157] <- as.numeric(levels(StudyTwoData[,157]))[StudyTwoData[,157]]

StudyTwoData[,158]
as.numeric(StudyTwoData[,158])
StudyTwoData[,158] <- as.numeric(levels(StudyTwoData[,158]))[StudyTwoData[,158]]

StudyTwoData[,159]
as.numeric(StudyTwoData[,159])
StudyTwoData[,159] <- as.numeric(levels(StudyTwoData[,159]))[StudyTwoData[,159]]

StudyTwoData[,160]
as.numeric(StudyTwoData[,160])
StudyTwoData[,160] <- as.numeric(levels(StudyTwoData[,160]))[StudyTwoData[,160]]

StudyTwoData[,164]
as.numeric(StudyTwoData[,164])
StudyTwoData[,164] <- as.numeric(levels(StudyTwoData[,164]))[StudyTwoData[,164]]

StudyTwoData[,165]
as.numeric(StudyTwoData[,165])
StudyTwoData[,165] <- as.numeric(levels(StudyTwoData[,165]))[StudyTwoData[,165]]

StudyTwoData[,166]
as.numeric(StudyTwoData[,166])
StudyTwoData[,166] <- as.numeric(levels(StudyTwoData[,166]))[StudyTwoData[,166]]

StudyTwoData[,167]
as.numeric(StudyTwoData[,167])
StudyTwoData[,167] <- as.numeric(levels(StudyTwoData[,167]))[StudyTwoData[,167]]

StudyTwoData[,170]
as.numeric(StudyTwoData[,170])
StudyTwoData[,170] <- as.numeric(levels(StudyTwoData[,170]))[StudyTwoData[,170]]

StudyTwoData[,171]
as.numeric(StudyTwoData[,171])
StudyTwoData[,171] <- as.numeric(levels(StudyTwoData[,171]))[StudyTwoData[,171]]

StudyTwoData[,172]
as.numeric(StudyTwoData[,172])
StudyTwoData[,172] <- as.numeric(levels(StudyTwoData[,172]))[StudyTwoData[,172]]

StudyTwoData[,173]
as.numeric(StudyTwoData[,173])
StudyTwoData[,173] <- as.numeric(levels(StudyTwoData[,173]))[StudyTwoData[,173]]

StudyTwoData[,176]
as.numeric(StudyTwoData[,176])
StudyTwoData[,176] <- as.numeric(levels(StudyTwoData[,176]))[StudyTwoData[,176]]

StudyTwoData[,177]
as.numeric(StudyTwoData[,177])
StudyTwoData[,177] <- as.numeric(levels(StudyTwoData[,177]))[StudyTwoData[,177]]

StudyTwoData[,178]
as.numeric(StudyTwoData[,178])
StudyTwoData[,178] <- as.numeric(levels(StudyTwoData[,178]))[StudyTwoData[,178]]

StudyTwoData[,179]
as.numeric(StudyTwoData[,179])
StudyTwoData[,179] <- as.numeric(levels(StudyTwoData[,179]))[StudyTwoData[,179]]

StudyTwoData[,188]
as.numeric(StudyTwoData[,188])
StudyTwoData[,188] <- as.numeric(levels(StudyTwoData[,188]))[StudyTwoData[,188]]

StudyTwoData[,189]
as.numeric(StudyTwoData[,189])
StudyTwoData[,189] <- as.numeric(levels(StudyTwoData[,189]))[StudyTwoData[,189]]

StudyTwoData[,190]
as.numeric(StudyTwoData[,190])
StudyTwoData[,190] <- as.numeric(levels(StudyTwoData[,190]))[StudyTwoData[,190]]

StudyTwoData[,191]
as.numeric(StudyTwoData[,191])
StudyTwoData[,191] <- as.numeric(levels(StudyTwoData[,191]))[StudyTwoData[,191]]

StudyTwoData[,200]
as.numeric(StudyTwoData[,200])
StudyTwoData[,200] <- as.numeric(levels(StudyTwoData[,200]))[StudyTwoData[,200]]

StudyTwoData[,201]
as.numeric(StudyTwoData[,201])
StudyTwoData[,201] <- as.numeric(levels(StudyTwoData[,201]))[StudyTwoData[,201]]

StudyTwoData[,202]
as.numeric(StudyTwoData[,202])
StudyTwoData[,202] <- as.numeric(levels(StudyTwoData[,202]))[StudyTwoData[,202]]

StudyTwoData[,203]
as.numeric(StudyTwoData[,203])
StudyTwoData[,203] <- as.numeric(levels(StudyTwoData[,203]))[StudyTwoData[,203]]

StudyTwoData[,214]
as.numeric(StudyTwoData[,214])
StudyTwoData[,214] <- as.numeric(levels(StudyTwoData[,214]))[StudyTwoData[,214]]

StudyTwoData[,215]
as.numeric(StudyTwoData[,215])
StudyTwoData[,215] <- as.numeric(levels(StudyTwoData[,215]))[StudyTwoData[,215]]

StudyTwoData[,216]
as.numeric(StudyTwoData[,216])
StudyTwoData[,216] <- as.numeric(levels(StudyTwoData[,216]))[StudyTwoData[,216]]

StudyTwoData[,217]
as.numeric(StudyTwoData[,217])
StudyTwoData[,217] <- as.numeric(levels(StudyTwoData[,217]))[StudyTwoData[,217]]

#StudyTwoData[,228]
#as.numeric(StudyTwoData[,228])
#StudyTwoData[,228] <- as.numeric(levels(StudyTwoData[,228]))[StudyTwoData[,228]]

#StudyTwoData[,229]
#as.numeric(StudyTwoData[,229])
#StudyTwoData[,229] <- as.numeric(levels(StudyTwoData[,229]))[StudyTwoData[,229]]

#StudyTwoData[,230]
#as.numeric(StudyTwoData[,230])
#StudyTwoData[,230] <- as.numeric(levels(StudyTwoData[,230]))[StudyTwoData[,230]]

#StudyTwoData[,231]
#as.numeric(StudyTwoData[,231])
#StudyTwoData[,231] <- as.numeric(levels(StudyTwoData[,231]))[StudyTwoData[,231]]

StudyTwoData[,256]
as.numeric(StudyTwoData[,256])
StudyTwoData[,256] <- as.numeric(levels(StudyTwoData[,256]))[StudyTwoData[,256]]

StudyTwoData[,257]
as.numeric(StudyTwoData[,257])
StudyTwoData[,257] <- as.numeric(levels(StudyTwoData[,257]))[StudyTwoData[,257]]

StudyTwoData[,258]
as.numeric(StudyTwoData[,258])
StudyTwoData[,258] <- as.numeric(levels(StudyTwoData[,258]))[StudyTwoData[,258]]

StudyTwoData[,259]
as.numeric(StudyTwoData[,259])
StudyTwoData[,259] <- as.numeric(levels(StudyTwoData[,259]))[StudyTwoData[,259]]

StudyTwoData[,276]
as.numeric(StudyTwoData[,276])
StudyTwoData[,276] <- as.numeric(levels(StudyTwoData[,276]))[StudyTwoData[,276]]

StudyTwoData[,277]
as.numeric(StudyTwoData[,277])
StudyTwoData[,277] <- as.numeric(levels(StudyTwoData[,277]))[StudyTwoData[,277]]

StudyTwoData[,278]
as.numeric(StudyTwoData[,278])
StudyTwoData[,278] <- as.numeric(levels(StudyTwoData[,278]))[StudyTwoData[,278]]

StudyTwoData[,279]
as.numeric(StudyTwoData[,279])
StudyTwoData[,279] <- as.numeric(levels(StudyTwoData[,279]))[StudyTwoData[,279]]

StudyTwoData[,300]
as.numeric(StudyTwoData[,300])
StudyTwoData[,300] <- as.numeric(levels(StudyTwoData[,300]))[StudyTwoData[,300]]

StudyTwoData[,301]
as.numeric(StudyTwoData[,301])
StudyTwoData[,301] <- as.numeric(levels(StudyTwoData[,301]))[StudyTwoData[,301]]

StudyTwoData[,302]
as.numeric(StudyTwoData[,302])
StudyTwoData[,302] <- as.numeric(levels(StudyTwoData[,302]))[StudyTwoData[,302]]

StudyTwoData[,303]
as.numeric(StudyTwoData[,303])
StudyTwoData[,303] <- as.numeric(levels(StudyTwoData[,303]))[StudyTwoData[,303]]

StudyTwoData[,304]
as.numeric(StudyTwoData[,304])
StudyTwoData[,304] <- as.numeric(levels(StudyTwoData[,304]))[StudyTwoData[,304]]

StudyTwoData[,305]
as.numeric(StudyTwoData[,305])
StudyTwoData[,305] <- as.numeric(levels(StudyTwoData[,305]))[StudyTwoData[,305]]

StudyTwoData[,306]
as.numeric(StudyTwoData[,306])
StudyTwoData[,306] <- as.numeric(levels(StudyTwoData[,306]))[StudyTwoData[,306]]

StudyTwoData[,307]
as.numeric(StudyTwoData[,307])
StudyTwoData[,307] <- as.numeric(levels(StudyTwoData[,307]))[StudyTwoData[,307]]

StudyTwoData[,308]
as.numeric(StudyTwoData[,308])
StudyTwoData[,308] <- as.numeric(levels(StudyTwoData[,308]))[StudyTwoData[,308]]

StudyTwoData[,309]
as.numeric(StudyTwoData[,309])
StudyTwoData[,309] <- as.numeric(levels(StudyTwoData[,309]))[StudyTwoData[,309]]

StudyTwoData[,310]
as.numeric(StudyTwoData[,310])
StudyTwoData[,310] <- as.numeric(levels(StudyTwoData[,310]))[StudyTwoData[,310]]

StudyTwoData[,311]
as.numeric(StudyTwoData[,311])
StudyTwoData[,311] <- as.numeric(levels(StudyTwoData[,311]))[StudyTwoData[,311]]

StudyTwoData[,312]
as.numeric(StudyTwoData[,312])
StudyTwoData[,312] <- as.numeric(levels(StudyTwoData[,312]))[StudyTwoData[,312]]

StudyTwoData[,313]
as.numeric(StudyTwoData[,313])
StudyTwoData[,313] <- as.numeric(levels(StudyTwoData[,313]))[StudyTwoData[,313]]

StudyTwoData[,314]
as.numeric(StudyTwoData[,314])
StudyTwoData[,314] <- as.numeric(levels(StudyTwoData[,314]))[StudyTwoData[,314]]

StudyTwoData[,315]
as.numeric(StudyTwoData[,315])
StudyTwoData[,315] <- as.numeric(levels(StudyTwoData[,315]))[StudyTwoData[,315]]

StudyTwoData[,316]
as.numeric(StudyTwoData[,316])
StudyTwoData[,316] <- as.numeric(levels(StudyTwoData[,316]))[StudyTwoData[,316]]

StudyTwoData[,317]
as.numeric(StudyTwoData[,317])
StudyTwoData[,317] <- as.numeric(levels(StudyTwoData[,317]))[StudyTwoData[,317]]

StudyTwoData[,318]
as.numeric(StudyTwoData[,318])
StudyTwoData[,318] <- as.numeric(levels(StudyTwoData[,318]))[StudyTwoData[,318]]

StudyTwoData[,319]
as.numeric(StudyTwoData[,319])
StudyTwoData[,319] <- as.numeric(levels(StudyTwoData[,319]))[StudyTwoData[,319]]

StudyTwoData[,320]
as.numeric(StudyTwoData[,320])
StudyTwoData[,320] <- as.numeric(levels(StudyTwoData[,320]))[StudyTwoData[,320]]

StudyTwoData[,321]
as.numeric(StudyTwoData[,321])
StudyTwoData[,321] <- as.numeric(levels(StudyTwoData[,321]))[StudyTwoData[,321]]

StudyTwoData[,322]
as.numeric(StudyTwoData[,322])
StudyTwoData[,322] <- as.numeric(levels(StudyTwoData[,322]))[StudyTwoData[,322]]

StudyTwoData[,323]
as.numeric(StudyTwoData[,323])
StudyTwoData[,323] <- as.numeric(levels(StudyTwoData[,323]))[StudyTwoData[,323]]

StudyTwoData[,324]
as.numeric(StudyTwoData[,324])
StudyTwoData[,324] <- as.numeric(levels(StudyTwoData[,324]))[StudyTwoData[,324]]

StudyTwoData[,325]
as.numeric(StudyTwoData[,325])
StudyTwoData[,325] <- as.numeric(levels(StudyTwoData[,325]))[StudyTwoData[,325]]

StudyTwoData[,326]
as.numeric(StudyTwoData[,326])
StudyTwoData[,326] <- as.numeric(levels(StudyTwoData[,326]))[StudyTwoData[,326]]

StudyTwoData[,327]
as.numeric(StudyTwoData[,327])
StudyTwoData[,327] <- as.numeric(levels(StudyTwoData[,327]))[StudyTwoData[,327]]

StudyTwoData[,328]
as.numeric(StudyTwoData[,328])
StudyTwoData[,328] <- as.numeric(levels(StudyTwoData[,328]))[StudyTwoData[,328]]

StudyTwoData[,329]
as.numeric(StudyTwoData[,329])
StudyTwoData[,329] <- as.numeric(levels(StudyTwoData[,329]))[StudyTwoData[,329]]

StudyTwoData[,330]
as.numeric(StudyTwoData[,330])
StudyTwoData[,330] <- as.numeric(levels(StudyTwoData[,330]))[StudyTwoData[,330]]

StudyTwoData[,331]
as.numeric(StudyTwoData[,331])
StudyTwoData[,331] <- as.numeric(levels(StudyTwoData[,331]))[StudyTwoData[,331]]

StudyTwoData[,332]
as.numeric(StudyTwoData[,332])
StudyTwoData[,332] <- as.numeric(levels(StudyTwoData[,332]))[StudyTwoData[,332]]

StudyTwoData[,333]
as.numeric(StudyTwoData[,333])
StudyTwoData[,333] <- as.numeric(levels(StudyTwoData[,333]))[StudyTwoData[,333]]

StudyTwoData[,334]
as.numeric(StudyTwoData[,334])
StudyTwoData[,334] <- as.numeric(levels(StudyTwoData[,334]))[StudyTwoData[,334]]

StudyTwoData[,335]
as.numeric(StudyTwoData[,335])
StudyTwoData[,335] <- as.numeric(levels(StudyTwoData[,335]))[StudyTwoData[,335]]

StudyTwoData[,336]
as.numeric(StudyTwoData[,336])
StudyTwoData[,336] <- as.numeric(levels(StudyTwoData[,336]))[StudyTwoData[,336]]

StudyTwoData[,337]
as.numeric(StudyTwoData[,337])
StudyTwoData[,337] <- as.numeric(levels(StudyTwoData[,337]))[StudyTwoData[,337]]

StudyTwoData[,338]
as.numeric(StudyTwoData[,338])
StudyTwoData[,338] <- as.numeric(levels(StudyTwoData[,338]))[StudyTwoData[,338]]

StudyTwoData[,339]
as.numeric(StudyTwoData[,339])
StudyTwoData[,339] <- as.numeric(levels(StudyTwoData[,339]))[StudyTwoData[,339]]

StudyTwoData$Nationalism_Nationalism_3 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_3, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_3<- as.numeric(StudyTwoData$Nationalism_Nationalism_3)
StudyTwoData$Nationalism_Nationalism_4 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_4, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_4<- as.numeric(StudyTwoData$Nationalism_Nationalism_4)

StudyTwoData$Nationalism_Nationalism_5 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_5, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_5<- as.numeric(StudyTwoData$Nationalism_Nationalism_5)
StudyTwoData$Nationalism_Nationalism_6 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_6, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_6<- as.numeric(StudyTwoData$Nationalism_Nationalism_6)
StudyTwoData$Nationalism_Nationalism_7 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_7, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_7<- as.numeric(StudyTwoData$Nationalism_Nationalism_7)
StudyTwoData$Nationalism_Nationalism_8 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_8, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_8<- as.numeric(StudyTwoData$Nationalism_Nationalism_8)
StudyTwoData$Nationalism_Nationalism_9 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_9, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_9<- as.numeric(StudyTwoData$Nationalism_Nationalism_9)
StudyTwoData$Nationalism_Nationalism_10 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_10, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_10<- as.numeric(StudyTwoData$Nationalism_Nationalism_10)
StudyTwoData$Nationalism_Nationalism_11 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_11, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_11<- as.numeric(StudyTwoData$Nationalism_Nationalism_11)
StudyTwoData$Nationalism_Nationalism_12 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_12, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_12<- as.numeric(StudyTwoData$Nationalism_Nationalism_12)
StudyTwoData$Nationalism_Nationalism_13 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_13, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_13<- as.numeric(StudyTwoData$Nationalism_Nationalism_13)
StudyTwoData$Nationalism_Nationalism_14 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_14, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_14<- as.numeric(StudyTwoData$Nationalism_Nationalism_14)
StudyTwoData$Nationalism_Nationalism_15 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_15, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_15<- as.numeric(StudyTwoData$Nationalism_Nationalism_15)
StudyTwoData$Nationalism_Nationalism_16 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_16, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Nationalism_Nationalism_16<- as.numeric(StudyTwoData$Nationalism_Nationalism_16)

StudyTwoData$EconMob_EconMob_1 <- dplyr::recode(StudyTwoData$EconMob_EconMob_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$EconMob_EconMob_1 <- as.numeric(StudyTwoData$EconMob_EconMob_1)
StudyTwoData$EconMob_EconMob_2 <- dplyr::recode(StudyTwoData$EconMob_EconMob_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$EconMob_EconMob_2 <- as.numeric(StudyTwoData$EconMob_EconMob_2)
StudyTwoData$EconMob_EconMob_3 <- dplyr::recode(StudyTwoData$EconMob_EconMob_3,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$EconMob_EconMob_3 <- as.numeric(StudyTwoData$EconMob_EconMob_3)
StudyTwoData$EconMob_EconMob_4 <- dplyr::recode(StudyTwoData$EconMob_EconMob_4,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$EconMob_EconMob_4 <- as.numeric(StudyTwoData$EconMob_EconMob_4)
StudyTwoData$EconMob_EconMob_5 <- dplyr::recode(StudyTwoData$EconMob_EconMob_5,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$EconMob_EconMob_5 <- as.numeric(StudyTwoData$EconMob_EconMob_5)
StudyTwoData$EconMob_EconMob_6 <- dplyr::recode(StudyTwoData$EconMob_EconMob_6,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$EconMob_EconMob_6 <- as.numeric(StudyTwoData$EconMob_EconMob_6)
StudyTwoData$EconMob_EconMob_7 <- dplyr::recode(StudyTwoData$EconMob_EconMob_7,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$EconMob_EconMob_7 <- as.numeric(StudyTwoData$EconMob_EconMob_7)
StudyTwoData$EconMob_EconMob_8 <- dplyr::recode(StudyTwoData$EconMob_EconMob_8,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$EconMob_EconMob_8 <- as.numeric(StudyTwoData$EconMob_EconMob_8)
StudyTwoData$EconMob_EconMob_9 <- dplyr::recode(StudyTwoData$EconMob_EconMob_9,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$EconMob_EconMob_9 <- as.numeric(StudyTwoData$EconMob_EconMob_9)
StudyTwoData$EconMob_EconMob_10 <- dplyr::recode(StudyTwoData$EconMob_EconMob_10,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$EconMob_EconMob_10 <- as.numeric(StudyTwoData$EconMob_EconMob_10)
StudyTwoData$EconMob_EconMob_11 <- dplyr::recode(StudyTwoData$EconMob_EconMob_11,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$EconMob_EconMob_11<- as.numeric(StudyTwoData$EconMob_EconMob_11)
StudyTwoData$EconMob_EconMob_12 <- dplyr::recode(StudyTwoData$EconMob_EconMob_12,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$EconMob_EconMob_12 <- as.numeric(StudyTwoData$EconMob_EconMob_12)

StudyTwoData$Masc_Masc_1 <- dplyr::recode(StudyTwoData$Masc_Masc_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Masc_Masc_1 <- as.numeric(StudyTwoData$Masc_Masc_1)
StudyTwoData$Masc_Masc_2 <- dplyr::recode(StudyTwoData$Masc_Masc_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Masc_Masc_2 <- as.numeric(StudyTwoData$Masc_Masc_2)
StudyTwoData$Masc_Masc_3 <- dplyr::recode(StudyTwoData$Masc_Masc_3,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Masc_Masc_3 <- as.numeric(StudyTwoData$Masc_Masc_3)
StudyTwoData$Masc_Masc_4 <- dplyr::recode(StudyTwoData$Masc_Masc_4,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Masc_Masc_4 <- as.numeric(StudyTwoData$Masc_Masc_4)
StudyTwoData$Masc_Masc_5 <- dplyr::recode(StudyTwoData$Masc_Masc_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Masc_Masc_5 <- as.numeric(StudyTwoData$Masc_Masc_1)
StudyTwoData$Masc_Masc_6 <- dplyr::recode(StudyTwoData$Masc_Masc_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Masc_Masc_6 <- as.numeric(StudyTwoData$Masc_Masc_2)
StudyTwoData$Masc_Masc_7 <- dplyr::recode(StudyTwoData$Masc_Masc_3,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Masc_Masc_7 <- as.numeric(StudyTwoData$Masc_Masc_3)
StudyTwoData$Masc_Masc_8 <- dplyr::recode(StudyTwoData$Masc_Masc_4,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Masc_Masc_8 <- as.numeric(StudyTwoData$Masc_Masc_4)

StudyTwoData$Colorblind_Colorblind_1 <- dplyr::recode(StudyTwoData$Colorblind_Colorblind_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$Colorblind_Colorblind_1 <- as.numeric(StudyTwoData$Colorblind_Colorblind_1)
StudyTwoData$Colorblind_Colorblind_2 <- dplyr::recode(StudyTwoData$Colorblind_Colorblind_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$Colorblind_Colorblind_2<- as.numeric(StudyTwoData$Colorblind_Colorblind_2)
StudyTwoData$Colorblind_Colorblind_3 <- dplyr::recode(StudyTwoData$Colorblind_Colorblind_3,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$Colorblind_Colorblind_3 <- as.numeric(StudyTwoData$Colorblind_Colorblind_3)
StudyTwoData$Colorblind_Colorblind_4 <- dplyr::recode(StudyTwoData$Colorblind_Colorblind_4,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$Colorblind_Colorblind_4 <- as.numeric(StudyTwoData$Colorblind_Colorblind_4)
StudyTwoData$Colorblind_Colorblind_5 <- dplyr::recode(StudyTwoData$Colorblind_Colorblind_5,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$Colorblind_Colorblind_5 <- as.numeric(StudyTwoData$Colorblind_Colorblind_5)

StudyTwoData$CB_Laurel_CB_Laurel_1 <- dplyr::recode(StudyTwoData$CB_Laurel_CB_Laurel_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$CB_Laurel_CB_Laurel_1 <- as.numeric(StudyTwoData$CB_Laurel_CB_Laurel_1)
StudyTwoData$CB_Laurel_CB_Laurel_2 <- dplyr::recode(StudyTwoData$CB_Laurel_CB_Laurel_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$CB_Laurel_CB_Laurel_2 <- as.numeric(StudyTwoData$CB_Laurel_CB_Laurel_2)
StudyTwoData$CB_Laurel_CB_Laurel_3 <- dplyr::recode(StudyTwoData$CB_Laurel_CB_Laurel_3,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$CB_Laurel_CB_Laurel_3 <- as.numeric(StudyTwoData$CB_Laurel_CB_Laurel_3)
StudyTwoData$CB_Laurel_CB_Laurel_4 <- dplyr::recode(StudyTwoData$CB_Laurel_CB_Laurel_4,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$CB_Laurel_CB_Laurel_4 <- as.numeric(StudyTwoData$CB_Laurel_CB_Laurel_4)
StudyTwoData$CB_Laurel_CB_Laurel_5 <- dplyr::recode(StudyTwoData$CB_Laurel_CB_Laurel_5,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$CB_Laurel_CB_Laurel_5 <- as.numeric(StudyTwoData$CB_Laurel_CB_Laurel_5)
StudyTwoData$CB_Laurel_CB_Laurel_6 <- dplyr::recode(StudyTwoData$CB_Laurel_CB_Laurel_6,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$CB_Laurel_CB_Laurel_6 <- as.numeric(StudyTwoData$CB_Laurel_CB_Laurel_6)
StudyTwoData$CB_Laurel_CB_Laurel_7 <- dplyr::recode(StudyTwoData$CB_Laurel_CB_Laurel_7,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$CB_Laurel_CB_Laurel_7 <- as.numeric(StudyTwoData$CB_Laurel_CB_Laurel_7)
StudyTwoData$CB_Laurel_CB_Laurel_8 <- dplyr::recode(StudyTwoData$CB_Laurel_CB_Laurel_8,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$CB_Laurel_CB_Laurel_8 <- as.numeric(StudyTwoData$CB_Laurel_CB_Laurel_8)
StudyTwoData$CB_Laurel_CB_Laurel_9 <- dplyr::recode(StudyTwoData$CB_Laurel_CB_Laurel_9,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$CB_Laurel_CB_Laurel_9 <- as.numeric(StudyTwoData$CB_Laurel_CB_Laurel_9)
StudyTwoData$CB_Laurel_CB_Laurel_10 <- dplyr::recode(StudyTwoData$CB_Laurel_CB_Laurel_10,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$CB_Laurel_CB_Laurel_10 <- as.numeric(StudyTwoData$CB_Laurel_CB_Laurel_10)
StudyTwoData$CB_Laurel_CB_Laurel_11 <- dplyr::recode(StudyTwoData$CB_Laurel_CB_Laurel_11,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$CB_Laurel_CB_Laurel_11 <- as.numeric(StudyTwoData$CB_Laurel_CB_Laurel_11)

StudyTwoData$DV1_1 <- dplyr::recode(StudyTwoData$DV1_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV1_1 <- as.numeric(StudyTwoData$DV1_1)
StudyTwoData$DV1_2 <- dplyr::recode(StudyTwoData$DV1_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV1_2 <- as.numeric(StudyTwoData$DV1_2)
StudyTwoData$DV1_3 <- dplyr::recode(StudyTwoData$DV1_3,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV1_3 <- as.numeric(StudyTwoData$DV1_3)
StudyTwoData$DV1_4 <- dplyr::recode(StudyTwoData$DV1_4,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV1_4 <- as.numeric(StudyTwoData$DV1_4)
StudyTwoData$DV1_5 <- dplyr::recode(StudyTwoData$DV1_5,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV1_5 <- as.numeric(StudyTwoData$DV1_5)
StudyTwoData$DV1_6 <- dplyr::recode(StudyTwoData$DV1_6,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV1_6 <- as.numeric(StudyTwoData$DV1_6)
StudyTwoData$DV1_7 <- dplyr::recode(StudyTwoData$DV1_7,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV1_7 <- as.numeric(StudyTwoData$DV1_7)
StudyTwoData$DV1_8 <- dplyr::recode(StudyTwoData$DV1_8,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV1_8 <- as.numeric(StudyTwoData$DV1_8)
StudyTwoData$DV1_9 <- dplyr::recode(StudyTwoData$DV1_9,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV1_9 <- as.numeric(StudyTwoData$DV1_9)
StudyTwoData$DV1_10 <- dplyr::recode(StudyTwoData$DV1_10,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV1_10 <- as.numeric(StudyTwoData$DV1_10)
StudyTwoData$DV1_11 <- dplyr::recode(StudyTwoData$DV1_11,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV1_11 <- as.numeric(StudyTwoData$DV1_11)

StudyTwoData$DV2_Q38_1 <- dplyr::recode(StudyTwoData$DV2_Q38_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV2_Q38_1 <- as.numeric(StudyTwoData$DV2_Q38_1)
StudyTwoData$DV2_Q38_2 <- dplyr::recode(StudyTwoData$DV2_Q38_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV2_Q38_2 <- as.numeric(StudyTwoData$DV2_Q38_2)
StudyTwoData$DV2_Q38_3 <- dplyr::recode(StudyTwoData$DV2_Q38_3,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV2_Q38_3 <- as.numeric(StudyTwoData$DV2_Q38_3)
StudyTwoData$DV2_Q38_4 <- dplyr::recode(StudyTwoData$DV2_Q38_4,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV2_Q38_4 <- as.numeric(StudyTwoData$DV2_Q38_4)
StudyTwoData$DV2_Q38_5 <- dplyr::recode(StudyTwoData$DV2_Q38_5,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV2_Q38_5 <- as.numeric(StudyTwoData$DV2_Q38_5)
StudyTwoData$DV2_Q38_6 <- dplyr::recode(StudyTwoData$DV2_Q38_6,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV2_Q38_6 <- as.numeric(StudyTwoData$DV2_Q38_6)
StudyTwoData$DV2_Q38_7 <- dplyr::recode(StudyTwoData$DV2_Q38_7,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV2_Q38_7 <- as.numeric(StudyTwoData$DV2_Q38_7)
StudyTwoData$DV2_Q38_8 <- dplyr::recode(StudyTwoData$DV2_Q38_8,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV2_Q38_8 <- as.numeric(StudyTwoData$DV2_Q38_8)
StudyTwoData$DV2_Q38_10 <- dplyr::recode(StudyTwoData$DV2_Q38_10,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV2_Q38_10 <- as.numeric(StudyTwoData$DV2_Q38_10)
StudyTwoData$DV2_Q38_11 <- dplyr::recode(StudyTwoData$DV2_Q38_11,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV2_Q38_11 <- as.numeric(StudyTwoData$DV2_Q38_11)
StudyTwoData$DV2_Q38_12 <- dplyr::recode(StudyTwoData$DV2_Q38_12,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV2_Q38_12 <- as.numeric(StudyTwoData$DV2_Q38_12)

StudyTwoData$DV2_DV2_9 <- dplyr::recode(StudyTwoData$DV2_DV2_9,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV2_DV2_9 <- as.numeric(StudyTwoData$DV2_DV2_9)
StudyTwoData$DV2_DV2_13 <- dplyr::recode(StudyTwoData$DV2_DV2_13,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV2_DV2_13 <- as.numeric(StudyTwoData$DV2_DV2_13)
StudyTwoData$DV2_DV2_14 <- dplyr::recode(StudyTwoData$DV2_DV2_14,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV2_DV2_14 <- as.numeric(StudyTwoData$DV2_DV2_14)

StudyTwoData$DV3_Q39_1 <- dplyr::recode(StudyTwoData$DV3_Q39_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV3_Q39_1 <- as.numeric(StudyTwoData$DV3_Q39_1)
StudyTwoData$DV3_Q39_2 <- dplyr::recode(StudyTwoData$DV3_Q39_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV3_Q39_2 <- as.numeric(StudyTwoData$DV3_Q39_2)
StudyTwoData$DV3_Q39_4 <- dplyr::recode(StudyTwoData$DV3_Q39_4,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV3_Q39_4 <- as.numeric(StudyTwoData$DV3_Q39_4)
StudyTwoData$DV3_Q39_5 <- dplyr::recode(StudyTwoData$DV3_Q39_5,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV3_Q39_5 <- as.numeric(StudyTwoData$DV3_Q39_5)
StudyTwoData$DV3_Q39_6 <- dplyr::recode(StudyTwoData$DV3_Q39_6,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV3_Q39_6 <- as.numeric(StudyTwoData$DV3_Q39_6)
StudyTwoData$DV3_Q39_7 <- dplyr::recode(StudyTwoData$DV3_Q39_7,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV3_Q39_7 <- as.numeric(StudyTwoData$DV3_Q39_7)
StudyTwoData$DV3_Q39_8 <- dplyr::recode(StudyTwoData$DV3_Q39_8,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV3_Q39_8 <- as.numeric(StudyTwoData$DV3_Q39_8)
StudyTwoData$DV3_Q39_9 <- dplyr::recode(StudyTwoData$DV3_Q39_9,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$DV3_Q39_9 <- as.numeric(StudyTwoData$DV3_Q39_9)

StudyTwoData$AntiSov_AntiSov_1 <- dplyr::recode(StudyTwoData$AntiSov_AntiSov_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagee nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$AntiSov_AntiSov_1 <- as.numeric(StudyTwoData$AntiSov_AntiSov_1)
StudyTwoData$AntiSov_AntiSov_2 <- dplyr::recode(StudyTwoData$AntiSov_AntiSov_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagee nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$AntiSov_AntiSov_2 <- as.numeric(StudyTwoData$AntiSov_AntiSov_2)
StudyTwoData$AntiSov_AntiSov_3 <- dplyr::recode(StudyTwoData$AntiSov_AntiSov_3,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagee nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$AntiSov_AntiSov_3 <- as.numeric(StudyTwoData$AntiSov_AntiSov_3)
StudyTwoData$AntiSov_AntiSov_4 <- dplyr::recode(StudyTwoData$AntiSov_AntiSov_4,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagee nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$AntiSov_AntiSov_4 <- as.numeric(StudyTwoData$AntiSov_AntiSov_4)
StudyTwoData$AntiSov_AntiSov_5 <- dplyr::recode(StudyTwoData$AntiSov_AntiSov_5,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagee nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$AntiSov_AntiSov_5 <- as.numeric(StudyTwoData$AntiSov_AntiSov_5)
StudyTwoData$AntiSov_AntiSov_6 <- dplyr::recode(StudyTwoData$AntiSov_AntiSov_6,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagee nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)

StudyTwoData$AntiSov_AntiSov_6 <- as.numeric(StudyTwoData$AntiSov_AntiSov_6)

StudyTwoData[,144]
as.numeric(StudyTwoData[,144])
StudyTwoData[,144] <- as.numeric(levels(StudyTwoData[,144]))[StudyTwoData[,144]]

StudyTwoData[,145]
as.numeric(StudyTwoData[,145])
StudyTwoData[,145] <- as.numeric(levels(StudyTwoData[,145]))[StudyTwoData[,145]]

StudyTwoData[,146]
as.numeric(StudyTwoData[,146])
StudyTwoData[,146] <- as.numeric(levels(StudyTwoData[,146]))[StudyTwoData[,146]]

StudyTwoData[,147]
as.numeric(StudyTwoData[,147])
StudyTwoData[,147] <- as.numeric(levels(StudyTwoData[,147]))[StudyTwoData[,147]]

StudyTwoData$MealatYourHome <- dplyr::recode(StudyTwoData$MealatYourHome,"No" = 0, "Yes" = 1, "Not Applicable" = 99)
StudyTwoData$MealatYourHome <- as.numeric(StudyTwoData$MealatYourHome)

StudyTwoData$MealatTheirHome <- dplyr::recode(StudyTwoData$MealatTheirHome,"No" = 0, "Yes" = 1, "N/A" = 99)
StudyTwoData$MealatTheirHome <- as.numeric(StudyTwoData$MealatTheirHome)

StudyTwoData$Vacation <- dplyr::recode(StudyTwoData$Vacation,"No" = 0, "Yes" = 1, "Not Applicable" = 99)
StudyTwoData$Vacation <- as.numeric(StudyTwoData$Vacation)

StudyTwoData$SocialEvent <- dplyr::recode(StudyTwoData$SocialEvent,"No" = 0, "Yes" = 1, "Not Applicable" = 99)
StudyTwoData$SocialEvent <- as.numeric(StudyTwoData$SocialEvent)

StudyTwoData$Leuisure <- dplyr::recode(StudyTwoData$Leuisure,"Never" = 1, "Rarely" = 2, "Sometimes" = 3, "Often" = 4, "Very Often" = 5, "Not Applicable" = 99)
StudyTwoData$Leuisure <- as.numeric(StudyTwoData$Leuisure)

StudyTwoData$Speaking <- dplyr::recode(StudyTwoData$Speaking, "Daily" = 1, "4-6 times a week" = 2, "2-3 times a week" = 3, "Once a week" = 4, "A few times a month" = 5, "Once a month"= 6, "Once a year"= 7, "It has been over a year since I last spoke with one of the Native American people I know" = 8, "Not Applicable"= 99)
StudyTwoData$Speaking <- as.numeric(StudyTwoData$Speaking)

StudyTwoData$Share_Share_1 <- dplyr::recode(StudyTwoData$Share_Share_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7, "N/A"= 99)
StudyTwoData$Share_Share_1 <- as.numeric(StudyTwoData$Share_Share_1)
StudyTwoData$Share_Share_2 <- dplyr::recode(StudyTwoData$Share_Share_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7, "N/A"= 99)
StudyTwoData$Share_Share_2 <- as.numeric(StudyTwoData$Share_Share_2)
StudyTwoData$Share_Share_3 <- dplyr::recode(StudyTwoData$Share_Share_3,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7, "N/A"= 99)
StudyTwoData$Share_Share_3 <- as.numeric(StudyTwoData$Share_Share_3)

StudyTwoData[,161]
as.numeric(StudyTwoData[,161])
StudyTwoData[,161] <- as.numeric(levels(StudyTwoData[,161]))[StudyTwoData[,161]]

StudyTwoData[,162]
as.numeric(StudyTwoData[,162])
StudyTwoData[,162] <- as.numeric(levels(StudyTwoData[,162]))[StudyTwoData[,162]]

StudyTwoData[,163]
as.numeric(StudyTwoData[,163])
StudyTwoData[,163] <- as.numeric(levels(StudyTwoData[,163]))[StudyTwoData[,163]]

#StudyTwoData$FamProducts <- dplyr::recode(StudyTwoData$FamProducts, "American Spirit cigarettes" = 1,"Big Chief sugar" = 4 "Black Hawk cigarettes" = 5, "Calumet baking powder"	= 6,"Cherokee brand clothing"= 7, "Dodge Dakota"	= 12,"Eskimo pies"	= 13,	"Ford Apache"	=14,"Indian motocycle" = 15,"Indian Spirit air fresheners" = 16,"Jeep Cherokee"	= 17,"Land O'Lakes products (e.g., butter)"	=18, "Minnetonka moccasins"	= 19,"Mohave clothing"	= 20,"Mutual of Omaha insurance"	=22,"Narragansett beer" = 23, "Oneida silverware"	= 24, "Pontiac cars"	= 25,"Red Man snuff or chewing tobacco"	= 26,"Smokin' Joes cigars"	= 28,"Sue Bee honey" = 29,"Tootsie Roll pops"	= 31,"Toyota Tacoma"	= 32,"Umpqua dairy products (e.g., ice cream)"	= 34, "Winnebago vehicle (e.g., RV)" = 35)
#StudyTwoData$FamProducts <- as.numeric(StudyTwoData$FamProducts)

StudyTwoData$PlayedSportTeam <- dplyr::recode(StudyTwoData$PlayedSportTeam,"No" = 0, "Yes" = 1)
StudyTwoData$PlayedSportTeam <- as.numeric(StudyTwoData$PlayedSportTeam)

StudyTwoData$CommunitySportTeam <- dplyr::recode(StudyTwoData$CommunitySportTeam,"No" = 0, "Yes" = 1)
StudyTwoData$CommunitySportTeam <- as.numeric(StudyTwoData$CommunitySportTeam)

StudyTwoData$FanSportTeam <- dplyr::recode(StudyTwoData$FanSportTeam,"No" = 0, "Yes" = 1)
StudyTwoData$FanSportTeam <- as.numeric(StudyTwoData$FanSportTeam)

StudyTwoData$Spiritualpractice <- dplyr::recode(StudyTwoData$Spiritualpractice,"No" = 0, "Yes" = 1)
StudyTwoData$Spiritualpractice <- as.numeric(StudyTwoData$Spiritualpractice)

StudyTwoData$NativeClothing <- dplyr::recode(StudyTwoData$NativeClothing,"No" = 0, "Yes" = 1)
StudyTwoData$NativeClothing <- as.numeric(StudyTwoData$NativeClothing)

StudyTwoData$CowboyandIndianPlay <- dplyr::recode(StudyTwoData$CowboyandIndianPlay,"No" = 0, "Yes" = 1)
StudyTwoData$CowboyandIndianPlay <- as.numeric(StudyTwoData$CowboyandIndianPlay)

StudyTwoData$Invisibility_Invisibility_1 <- dplyr::recode(StudyTwoData$Invisibility_Invisibility_1,"Never" = 1, "Rarely" = 2, "Sometimes" = 3, "Often" = 4, "Very Often" = 5)
StudyTwoData$Invisibility_Invisibility_1 <- as.numeric(StudyTwoData$Invisibility_Invisibility_1)

StudyTwoData$Invisibility_Invisibility_2 <- dplyr::recode(StudyTwoData$Invisibility_Invisibility_2,"Never" = 1, "Rarely" = 2, "Sometimes" = 3, "Often" = 4, "Very Often" = 5)
StudyTwoData$Invisibility_Invisibility_2 <- as.numeric(StudyTwoData$Invisibility_Invisibility_2)

StudyTwoData$Invisibility_Invisibility_3 <- dplyr::recode(StudyTwoData$Invisibility_Invisibility_3,"Never" = 1, "Rarely" = 2, "Sometimes" = 3, "Often" = 4, "Very Often" = 5)
StudyTwoData$Invisibility_Invisibility_3 <- as.numeric(StudyTwoData$Invisibility_Invisibility_3)

StudyTwoData$Invisibility_Invisibility_4 <- dplyr::recode(StudyTwoData$Invisibility_Invisibility_4,"Never" = 1, "Rarely" = 2, "Sometimes" = 3, "Often" = 4, "Very Often" = 5)
StudyTwoData$Invisibility_Invisibility_4 <- as.numeric(StudyTwoData$Invisibility_Invisibility_4)

StudyTwoData$Invisibility_Invisibility_5 <- dplyr::recode(StudyTwoData$Invisibility_Invisibility_5,"Never" = 1, "Rarely" = 2, "Sometimes" = 3, "Often" = 4, "Very Often" = 5)
StudyTwoData$Invisibility_Invisibility_5 <- as.numeric(StudyTwoData$Invisibility_Invisibility_5)

StudyTwoData$Invisibility_Invisibility_6 <- dplyr::recode(StudyTwoData$Invisibility_Invisibility_6,"Never" = 1, "Rarely" = 2, "Sometimes" = 3, "Often" = 4, "Very Often" = 5)
StudyTwoData$Invisibility_Invisibility_6 <- as.numeric(StudyTwoData$Invisibility_Invisibility_6)

StudyTwoData$Invisibility_Invisibility_7 <- dplyr::recode(StudyTwoData$Invisibility_Invisibility_7,"Never" = 1, "Rarely" = 2, "Sometimes" = 3, "Often" = 4, "Very Often" = 5)
StudyTwoData$Invisibility_Invisibility_7 <- as.numeric(StudyTwoData$Invisibility_Invisibility_7)

StudyTwoData$Invisibility_Invisibility_8 <- dplyr::recode(StudyTwoData$Invisibility_Invisibility_8,"Never" = 1, "Rarely" = 2, "Sometimes" = 3, "Often" = 4, "Very Often" = 5)
StudyTwoData$Invisibility_Invisibility_8 <- as.numeric(StudyTwoData$Invisibility_Invisibility_8)

StudyTwoData$MCP_MCP_1 <- dplyr::recode(StudyTwoData$MCP_MCP_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$MCP_MCP_1 <- as.numeric(StudyTwoData$MCP_MCP_1)

StudyTwoData$MCP_MCP_2 <- dplyr::recode(StudyTwoData$MCP_MCP_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$MCP_MCP_2 <- as.numeric(StudyTwoData$MCP_MCP_2)

StudyTwoData$MCP_MCP_3 <- dplyr::recode(StudyTwoData$MCP_MCP_3,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$MCP_MCP_3 <- as.numeric(StudyTwoData$MCP_MCP_3)

StudyTwoData$MCP_MCP_4 <- dplyr::recode(StudyTwoData$MCP_MCP_4,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$MCP_MCP_4 <- as.numeric(StudyTwoData$MCP_MCP_4)

StudyTwoData$MCP_MCP_5 <- dplyr::recode(StudyTwoData$MCP_MCP_5,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$MCP_MCP_5 <- as.numeric(StudyTwoData$MCP_MCP_5)

StudyTwoData$MCP_MCP_6 <- dplyr::recode(StudyTwoData$MCP_MCP_6,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$MCP_MCP_6 <- as.numeric(StudyTwoData$MCP_MCP_6)

StudyTwoData$MCP_MCP_7 <- dplyr::recode(StudyTwoData$MCP_MCP_7,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$MCP_MCP_7 <- as.numeric(StudyTwoData$MCP_MCP_7)

StudyTwoData$MCP_MCP_8 <- dplyr::recode(StudyTwoData$MCP_MCP_8,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$MCP_MCP_8 <- as.numeric(StudyTwoData$MCP_MCP_8)

StudyTwoData$MCP_MCP_9 <- dplyr::recode(StudyTwoData$MCP_MCP_9,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$MCP_MCP_9 <- as.numeric(StudyTwoData$MCP_MCP_9)

StudyTwoData$MCP_MCP_10 <- dplyr::recode(StudyTwoData$MCP_MCP_10,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$MCP_MCP_10 <- as.numeric(StudyTwoData$MCP_MCP_10)

StudyTwoData$RacismMini_RacismMini_1 <- dplyr::recode(StudyTwoData$RacismMini_RacismMini_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$RacismMini_RacismMini_1 <- as.numeric(StudyTwoData$RacismMini_RacismMini_1)
StudyTwoData$RacismMini_RacismMini_2 <- dplyr::recode(StudyTwoData$RacismMini_RacismMini_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$RacismMini_RacismMini_2 <- as.numeric(StudyTwoData$RacismMini_RacismMini_2)
StudyTwoData$RacismMini_RacismMini_3 <- dplyr::recode(StudyTwoData$RacismMini_RacismMini_3,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$RacismMini_RacismMini_3 <- as.numeric(StudyTwoData$RacismMini_RacismMini_3)
StudyTwoData$RacismMini_RacismMini_4 <- dplyr::recode(StudyTwoData$RacismMini_RacismMini_4,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$RacismMini_RacismMini_4 <- as.numeric(StudyTwoData$RacismMini_RacismMini_4)
StudyTwoData$RacismMini_RacismMini_5 <- dplyr::recode(StudyTwoData$RacismMini_RacismMini_5,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$RacismMini_RacismMini_5 <- as.numeric(StudyTwoData$RacismMini_RacismMini_5)
StudyTwoData$RacismMini_RacismMini_6 <- dplyr::recode(StudyTwoData$RacismMini_RacismMini_6,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$RacismMini_RacismMini_6 <- as.numeric(StudyTwoData$RacismMini_RacismMini_6)
StudyTwoData$RacismMini_RacismMini_7 <- dplyr::recode(StudyTwoData$RacismMini_RacismMini_7,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$RacismMini_RacismMini_7 <- as.numeric(StudyTwoData$RacismMini_RacismMini_7)
StudyTwoData$RacismMini_RacismMini_8 <- dplyr::recode(StudyTwoData$RacismMini_RacismMini_8,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$RacismMini_RacismMini_8 <- as.numeric(StudyTwoData$RacismMini_RacismMini_8)
StudyTwoData$RacismMini_RacismMini_9 <- dplyr::recode(StudyTwoData$RacismMini_RacismMini_9,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$RacismMini_RacismMini_9 <- as.numeric(StudyTwoData$RacismMini_RacismMini_9)
StudyTwoData$RacismMini_RacismMini_10 <- dplyr::recode(StudyTwoData$RacismMini_RacismMini_10,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$RacismMini_RacismMini_10 <- as.numeric(StudyTwoData$RacismMini_RacismMini_10)

StudyTwoData$Stereotyping_Stereotyping_1 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_1,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_1 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_1)

StudyTwoData$Stereotyping_Stereotyping_2<- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_2,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_2 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_2)

StudyTwoData$Stereotyping_Stereotyping_3 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_3,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_3 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_3)

StudyTwoData$Stereotyping_Stereotyping_4 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_4,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_4 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_4)

StudyTwoData$Stereotyping_Stereotyping_5 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_5,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_5 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_5)

StudyTwoData$Stereotyping_Stereotyping_6 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_6,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_6 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_6)

StudyTwoData$Stereotyping_Stereotyping_7 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_7,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_7 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_7)

StudyTwoData$Stereotyping_Stereotyping_8 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_8,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_8 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_8)

StudyTwoData$Stereotyping_Stereotyping_9 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_9,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_9 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_9)

StudyTwoData$Stereotyping_Stereotyping_10 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_10,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_10 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_10)

StudyTwoData$Stereotyping_Stereotyping_11 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_11,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_11 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_11)

StudyTwoData$Stereotyping_Stereotyping_12<- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_12,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_12 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_12)

StudyTwoData$Stereotyping_Stereotyping_13 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_13,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_13 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_13)

StudyTwoData$Stereotyping_Stereotyping_14 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_14,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_14 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_14)

StudyTwoData$Stereotyping_Stereotyping_15 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_15,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_15 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_15)

StudyTwoData$Stereotyping_Stereotyping_17 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_17,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_17 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_17)

StudyTwoData$Stereotyping_Stereotyping_18 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_18,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_18 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_18)

StudyTwoData$Stereotyping_Stereotyping_19 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_19,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_19 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_19)

StudyTwoData$Stereotyping_Stereotyping_20 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_20,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_20 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_20)

StudyTwoData$Stereotyping_Stereotyping_21 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_21,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_21 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_21)

StudyTwoData$Stereotyping_Stereotyping_22 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_22,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_22 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_22)

StudyTwoData$Stereotyping_Stereotyping_23 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_23,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_23 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_23)

StudyTwoData$Stereotyping_Stereotyping_24 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_24,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_24 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_24)

StudyTwoData$Stereotyping_Stereotyping_25 <- dplyr::recode(StudyTwoData$Stereotyping_Stereotyping_25,"Extremely Problematic" = 1, "Problematic" = 2, "Somewhat Problematic" = 3, "Neither Problematic nor Acceptable" = 4, "Somewhat Acceptable" = 5, "Acceptable" = 6,"Extremely Acceptable" = 7)
StudyTwoData$Stereotyping_Stereotyping_25 <- as.numeric(StudyTwoData$Stereotyping_Stereotyping_25)

StudyTwoData$CultRacism_CultRacism_1 <- dplyr::recode(StudyTwoData$CultRacism_CultRacism_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_CultRacism_1 <- as.numeric(StudyTwoData$CultRacism_CultRacism_1)
StudyTwoData$CultRacism_CultRacism_2 <- dplyr::recode(StudyTwoData$CultRacism_CultRacism_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_CultRacism_2 <- as.numeric(StudyTwoData$CultRacism_CultRacism_2)
StudyTwoData$CultRacism_CultRacism_3 <- dplyr::recode(StudyTwoData$CultRacism_CultRacism_3,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_CultRacism_3 <- as.numeric(StudyTwoData$CultRacism_CultRacism_3)
StudyTwoData$CultRacism_CultRacism_4 <- dplyr::recode(StudyTwoData$CultRacism_CultRacism_4,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_CultRacism_4 <- as.numeric(StudyTwoData$CultRacism_CultRacism_4)
StudyTwoData$CultRacism_CultRacism_5 <- dplyr::recode(StudyTwoData$CultRacism_CultRacism_5,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_CultRacism_5 <- as.numeric(StudyTwoData$CultRacism_CultRacism_5)
StudyTwoData$CultRacism_CultRacism_6 <- dplyr::recode(StudyTwoData$CultRacism_CultRacism_6,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_CultRacism_6 <- as.numeric(StudyTwoData$CultRacism_CultRacism_6)
StudyTwoData$CultRacism_CultRacism_7 <- dplyr::recode(StudyTwoData$CultRacism_CultRacism_7,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_CultRacism_7 <- as.numeric(StudyTwoData$CultRacism_CultRacism_7)
StudyTwoData$CultRacism_CultRacism_8 <- dplyr::recode(StudyTwoData$CultRacism_CultRacism_8,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_CultRacism_8 <- as.numeric(StudyTwoData$CultRacism_CultRacism_8)
StudyTwoData$CultRacism_CultRacism_9 <- dplyr::recode(StudyTwoData$CultRacism_CultRacism_9,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_CultRacism_9 <- as.numeric(StudyTwoData$CultRacism_CultRacism_9)
StudyTwoData$CultRacism_CultRacism_10 <- dplyr::recode(StudyTwoData$CultRacism_CultRacism_10,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_CultRacism_10 <- as.numeric(StudyTwoData$CultRacism_CultRacism_10)
StudyTwoData$CultRacism_CultRacism_11 <- dplyr::recode(StudyTwoData$CultRacism_CultRacism_11,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_CultRacism_11 <- as.numeric(StudyTwoData$CultRacism_CultRacism_11)
StudyTwoData$CultRacism_CultRacism_12 <- dplyr::recode(StudyTwoData$CultRacism_CultRacism_12,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_CultRacism_12 <- as.numeric(StudyTwoData$CultRacism_CultRacism_12)
StudyTwoData$CultRacism_CultRacism_13 <- dplyr::recode(StudyTwoData$CultRacism_CultRacism_13,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_CultRacism_13 <- as.numeric(StudyTwoData$CultRacism_CultRacism_13)

StudyTwoData$CultRacism_Conflict_1 <- dplyr::recode(StudyTwoData$CultRacism_Conflict_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_Conflict_1 <- as.numeric(StudyTwoData$CultRacism_Conflict_1)
StudyTwoData$CultRacism_Conflict_2 <- dplyr::recode(StudyTwoData$CultRacism_Conflict_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_Conflict_2 <- as.numeric(StudyTwoData$CultRacism_Conflict_2)
StudyTwoData$CultRacism_Conflict_3 <- dplyr::recode(StudyTwoData$CultRacism_Conflict_3,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$CultRacism_Conflict_3 <- as.numeric(StudyTwoData$CultRacism_Conflict_3)

StudyTwoData$ContempKnow_1 <- dplyr::recode(StudyTwoData$ContempKnow_1,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$ContempKnow_1 <- as.numeric(StudyTwoData$ContempKnow_1)
StudyTwoData$ContempKnow_2 <- dplyr::recode(StudyTwoData$ContempKnow_2,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$ContempKnow_2 <- as.numeric(StudyTwoData$ContempKnow_2)
StudyTwoData$ContempKnow_3 <- dplyr::recode(StudyTwoData$ContempKnow_3,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$ContempKnow_3 <- as.numeric(StudyTwoData$ContempKnow_3)
StudyTwoData$ContempKnow_4 <- dplyr::recode(StudyTwoData$ContempKnow_4,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$ContempKnow_4 <- as.numeric(StudyTwoData$ContempKnow_4)
StudyTwoData$ContempKnow_5 <- dplyr::recode(StudyTwoData$ContempKnow_5,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$ContempKnow_5 <- as.numeric(StudyTwoData$ContempKnow_5)
StudyTwoData$ContempKnow_6 <- dplyr::recode(StudyTwoData$ContempKnow_6,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$ContempKnow_6 <- as.numeric(StudyTwoData$ContempKnow_6)
StudyTwoData$ContempKnow_7 <- dplyr::recode(StudyTwoData$ContempKnow_7,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$ContempKnow_7 <- as.numeric(StudyTwoData$ContempKnow_7)
StudyTwoData$ContempKnow_8 <- dplyr::recode(StudyTwoData$ContempKnow_8,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$ContempKnow_8 <- as.numeric(StudyTwoData$ContempKnow_8)
StudyTwoData$ContempKnow_9 <- dplyr::recode(StudyTwoData$ContempKnow_9,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$ContempKnow_9 <- as.numeric(StudyTwoData$ContempKnow_9)
StudyTwoData$ContempKnow_10 <- dplyr::recode(StudyTwoData$ContempKnow_10,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$ContempKnow_10 <- as.numeric(StudyTwoData$ContempKnow_10)


StudyTwoData$HistoricKnow_1 <- dplyr::recode(StudyTwoData$HistoricKnow_1,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$HistoricKnow_1 <- as.numeric(StudyTwoData$HistoricKnow_1)
StudyTwoData$HistoricKnow_2 <- dplyr::recode(StudyTwoData$HistoricKnow_2,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$HistoricKnow_2 <- as.numeric(StudyTwoData$HistoricKnow_2)
StudyTwoData$HistoricKnow_3 <- dplyr::recode(StudyTwoData$HistoricKnow_3,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$HistoricKnow_3 <- as.numeric(StudyTwoData$HistoricKnow_3)
StudyTwoData$HistoricKnow_4 <- dplyr::recode(StudyTwoData$HistoricKnow_4,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$HistoricKnow_4 <- as.numeric(StudyTwoData$HistoricKnow_4)
StudyTwoData$HistoricKnow_5 <- dplyr::recode(StudyTwoData$HistoricKnow_5,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$HistoricKnow_5 <- as.numeric(StudyTwoData$HistoricKnow_5)
StudyTwoData$HistoricKnow_6 <- dplyr::recode(StudyTwoData$HistoricKnow_6,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$HistoricKnow_6 <- as.numeric(StudyTwoData$HistoricKnow_6)
StudyTwoData$HistoricKnow_7 <- dplyr::recode(StudyTwoData$HistoricKnow_7,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$HistoricKnow_7 <- as.numeric(StudyTwoData$HistoricKnow_7)
StudyTwoData$HistoricKnow_8 <- dplyr::recode(StudyTwoData$HistoricKnow_8,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$HistoricKnow_8 <- as.numeric(StudyTwoData$HistoricKnow_8)
StudyTwoData$HistoricKnow_9 <- dplyr::recode(StudyTwoData$HistoricKnow_9,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$HistoricKnow_9 <- as.numeric(StudyTwoData$HistoricKnow_9)
StudyTwoData$HistoricKnow_10 <- dplyr::recode(StudyTwoData$HistoricKnow_10,"True" = 1, "False" = 2, "I don't know." = 3)
StudyTwoData$HistoricKnow_10 <- as.numeric(StudyTwoData$HistoricKnow_10)

StudyTwoData$StereotypeEndorse_Stereotyping_1 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_1,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_1 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_1)
StudyTwoData$StereotypeEndorse_Stereotyping_2 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_2,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_2 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_2)
StudyTwoData$StereotypeEndorse_Stereotyping_3 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_3,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_3 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_3)
StudyTwoData$StereotypeEndorse_Stereotyping_4 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_4,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_4 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_4)
StudyTwoData$StereotypeEndorse_Stereotyping_5 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_5,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_5 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_5)
StudyTwoData$StereotypeEndorse_Stereotyping_6 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_6,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_6 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_6)
StudyTwoData$StereotypeEndorse_Stereotyping_7 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_7,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_7 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_7)
StudyTwoData$StereotypeEndorse_Stereotyping_8 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_8,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_8 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_8)
StudyTwoData$StereotypeEndorse_Stereotyping_9 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_9,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_9 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_9)
StudyTwoData$StereotypeEndorse_Stereotyping_10 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_10,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_10 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_10)
StudyTwoData$StereotypeEndorse_Stereotyping_11 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_11,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_11 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_11)
StudyTwoData$StereotypeEndorse_Stereotyping_12 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_12,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_12 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_12)
StudyTwoData$StereotypeEndorse_Stereotyping_13 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_13,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_13 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_13)
StudyTwoData$StereotypeEndorse_Stereotyping_14 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_14,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_14 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_14)
StudyTwoData$StereotypeEndorse_Stereotyping_15 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_15,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_15 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_15)
StudyTwoData$StereotypeEndorse_Stereotyping_17 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_17,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_17 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_17 )
StudyTwoData$StereotypeEndorse_Stereotyping_18 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_18,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_18 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_18)
StudyTwoData$StereotypeEndorse_Stereotyping_19 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_19,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_19 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_19)
StudyTwoData$StereotypeEndorse_Stereotyping_20 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_20,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_20 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_20)
StudyTwoData$StereotypeEndorse_Stereotyping_21 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_21,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_21 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_21)
StudyTwoData$StereotypeEndorse_Stereotyping_22 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_22,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_22 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_22)
StudyTwoData$StereotypeEndorse_Stereotyping_23 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_23,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_23 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_23)
StudyTwoData$StereotypeEndorse_Stereotyping_24 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_24,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_24 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_24)
StudyTwoData$StereotypeEndorse_Stereotyping_25 <- dplyr::recode(StudyTwoData$StereotypeEndorse_Stereotyping_25,"Definitely not true at all" = 1, "Not True" = 2, "Somewhat not True" = 3, "Neither True nor Untrue" = 4, "Somewhat True" = 5, "True" = 6,"Definitely True" = 7)
StudyTwoData$StereotypeEndorse_Stereotyping_25 <- as.numeric(StudyTwoData$StereotypeEndorse_Stereotyping_25)

StudyTwoData[,364]
as.numeric(StudyTwoData[,364])
StudyTwoData[,364] <- as.numeric(levels(StudyTwoData[,364]))[StudyTwoData[,364]]

StudyTwoData[,365]
as.numeric(StudyTwoData[,365])
StudyTwoData[,365] <- as.numeric(levels(StudyTwoData[,365]))[StudyTwoData[,365]]

StudyTwoData[,366]
as.numeric(StudyTwoData[,366])
StudyTwoData[,366] <- as.numeric(levels(StudyTwoData[,366]))[StudyTwoData[,366]]

StudyTwoData[,367]
as.numeric(StudyTwoData[,367])
StudyTwoData[,367] <- as.numeric(levels(StudyTwoData[,367]))[StudyTwoData[,367]]

StudyTwoData$ContempInvisibility_ContempInvisibility_1 <- dplyr::recode(StudyTwoData$ContempInvisibility_ContempInvisibility_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$ContempInvisibility_ContempInvisibility_1 <- as.numeric(StudyTwoData$ContempInvisibility_ContempInvisibility_1)
StudyTwoData$ContempInvisibility_ContempInvisibility_2 <- dplyr::recode(StudyTwoData$ContempInvisibility_ContempInvisibility_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$ContempInvisibility_ContempInvisibility_2 <- as.numeric(StudyTwoData$ContempInvisibility_ContempInvisibility_2)
StudyTwoData$ContempInvisibility_ContempInvisibility_3 <- dplyr::recode(StudyTwoData$ContempInvisibility_ContempInvisibility_3,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$ContempInvisibility_ContempInvisibility_3 <- as.numeric(StudyTwoData$ContempInvisibility_ContempInvisibility_3)
StudyTwoData$ContempInvisibility_ContempInvisibility_4 <- dplyr::recode(StudyTwoData$ContempInvisibility_ContempInvisibility_4,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$ContempInvisibility_ContempInvisibility_4 <- as.numeric(StudyTwoData$ContempInvisibility_ContempInvisibility_4)
StudyTwoData$ContempInvisibility_ContempInvisibility_5 <- dplyr::recode(StudyTwoData$ContempInvisibility_ContempInvisibility_5,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$ContempInvisibility_ContempInvisibility_5 <- as.numeric(StudyTwoData$ContempInvisibility_ContempInvisibility_5)
StudyTwoData$ContempInvisibility_ContempInvisibility_6 <- dplyr::recode(StudyTwoData$ContempInvisibility_ContempInvisibility_6,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$ContempInvisibility_ContempInvisibility_6 <- as.numeric(StudyTwoData$ContempInvisibility_ContempInvisibility_6)
StudyTwoData$ContempInvisibility_ContempInvisibility_7 <- dplyr::recode(StudyTwoData$ContempInvisibility_ContempInvisibility_7,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat disagree" = 3, "Neither agree nor disagree" = 4, "Somewhat agree" = 5, "Agree" = 6,"Strongly agree" = 7)
StudyTwoData$ContempInvisibility_ContempInvisibility_7 <- as.numeric(StudyTwoData$ContempInvisibility_ContempInvisibility_7)

StudyTwoData[,375]
as.numeric(StudyTwoData[,375])
StudyTwoData[,375] <- as.numeric(levels(StudyTwoData[,375]))[StudyTwoData[,375]]

StudyTwoData[,376]
as.numeric(StudyTwoData[,376])
StudyTwoData[,376] <- as.numeric(levels(StudyTwoData[,376]))[StudyTwoData[,376]]

StudyTwoData[,377]
as.numeric(StudyTwoData[,377])
StudyTwoData[,377] <- as.numeric(levels(StudyTwoData[,377]))[StudyTwoData[,377]]

StudyTwoData[,378]
as.numeric(StudyTwoData[,378])
StudyTwoData[,378] <- as.numeric(levels(StudyTwoData[,378]))[StudyTwoData[,378]]

StudyTwoData$Guilt_PastGuilt_1 <- dplyr::recode(StudyTwoData$Guilt_PastGuilt_1,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Guilt_PastGuilt_1 <- as.numeric(StudyTwoData$Guilt_PastGuilt_1)
StudyTwoData$Guilt_PastGuilt_2 <- dplyr::recode(StudyTwoData$Guilt_PastGuilt_2,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Guilt_PastGuilt_2 <- as.numeric(StudyTwoData$Guilt_PastGuilt_2)
StudyTwoData$Guilt_PastGuilt_4 <- dplyr::recode(StudyTwoData$Guilt_PastGuilt_4,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Guilt_PastGuilt_4 <- as.numeric(StudyTwoData$Guilt_PastGuilt_4)
StudyTwoData$Guilt_PastGuilt_5 <- dplyr::recode(StudyTwoData$Guilt_PastGuilt_5,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Guilt_PastGuilt_5 <- as.numeric(StudyTwoData$Guilt_PastGuilt_5)
StudyTwoData$Guilt_PastGuilt_3 <- dplyr::recode(StudyTwoData$Guilt_PastGuilt_3,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Guilt_PastGuilt_3 <- as.numeric(StudyTwoData$Guilt_PastGuilt_3)

StudyTwoData$Guilt_ContempGuilt_6 <- dplyr::recode(StudyTwoData$Guilt_ContempGuilt_6,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Guilt_ContempGuilt_6 <- as.numeric(StudyTwoData$Guilt_ContempGuilt_6)
StudyTwoData$Guilt_ContempGuilt_7 <- dplyr::recode(StudyTwoData$Guilt_ContempGuilt_7,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Guilt_ContempGuilt_7 <- as.numeric(StudyTwoData$Guilt_ContempGuilt_7)
StudyTwoData$Guilt_ContempGuilt_8 <- dplyr::recode(StudyTwoData$Guilt_ContempGuilt_8,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Guilt_ContempGuilt_8 <- as.numeric(StudyTwoData$Guilt_ContempGuilt_8)
StudyTwoData$Guilt_ContempGuilt_9 <- dplyr::recode(StudyTwoData$Guilt_ContempGuilt_9,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Guilt_ContempGuilt_9 <- as.numeric(StudyTwoData$Guilt_ContempGuilt_9)
StudyTwoData$Guilt_ContempGuilt_10 <- dplyr::recode(StudyTwoData$Guilt_ContempGuilt_10,"Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData$Guilt_ContempGuilt_10 <- as.numeric(StudyTwoData$Guilt_ContempGuilt_10)

StudyTwoData$Gender <- dplyr::recode(StudyTwoData$Gender,"Man" = 1, "Woman" = 2, "Transgender man" = 3, "Transgender woman" = 4, "Click to write Choice 7" = 5, "Genderqueer" = 6,"Another gender identity" = 7)
StudyTwoData$Gender<- as.numeric(StudyTwoData$Gender)

StudyTwoData$BorninUS<- dplyr::recode(StudyTwoData$BorninUS,"No" = 0, "Yes" = 1)
StudyTwoData$BorninUS <- as.numeric(StudyTwoData$BorninUS)

StudyTwoData$FatherUSBorn <- dplyr::recode(StudyTwoData$FatherUSBorn,"No" = 0, "Yes" = 1, "Unsure/Not applicable" = 3)
StudyTwoData$FatherUSBorn <- as.numeric(StudyTwoData$FatherUSBorn)

StudyTwoData$MotherUSBorn <- dplyr::recode(StudyTwoData$MotherUSBorn,"No" = 0, "Yes" = 1, "Unsure/Not applicable" = 3)
StudyTwoData$MotherUSBorn <- as.numeric(StudyTwoData$MotherUSBorn)

StudyTwoData$College <- dplyr::recode(StudyTwoData$College,"No" = 0, "Yes" = 1)
StudyTwoData$College <- as.numeric(StudyTwoData$College)

#add labels
label(StudyTwoData[,1:417]) <- as.vector(Questions[1,])
label(StudyTwoData)

#remove a few variables
StudyTwoData <- StudyTwoData[,-414:-417]

#Begin Analysis
str(StudyTwoData)

StudyTwoData.y <- StudyTwoData %>%
  filter(Consent == "I agree to participate in this study.")

StudyTwoData.y <- StudyTwoData.y[,-1]
View(StudyTwoData.y)


my_num_data <- StudyTwoData.y[, sapply(StudyTwoData.y, is.numeric)]

res <- cor(my_num_data, use = "complete.obs")
round(res,2)

library(Hmisc)
res2 <- rcorr(as.matrix(my_num_data), type = c("pearson","spearman"))
res2

#r values 
res2$r
res2$r <- round(res2$r, 3)

#p values
res2$P
res2$P <- round(res2$P, 3)

# ++++++++++++++++++++++++++++
# flattenCorrMatrix
# ++++++++++++++++++++++++++++
# cormat : matrix of the correlation coefficients
# pmat : matrix of the correlation p-values
flattenCorrMatrix <- function(cormat, pmat) {
  ut <- upper.tri(cormat)
  data.frame(
    row = rownames(cormat)[row(cormat)[ut]],
    column = rownames(cormat)[col(cormat)[ut]],
    cor  =(cormat)[ut],
    p = pmat[ut]
  )
}

matrix1 <- flattenCorrMatrix(res2$r, res2$P)

sig.matrix1 <- subset(matrix1, p < .051)

#generate the files
write.csv(res, file = "results.csv")
write.csv(matrix1, file = "all cor with p.csv")
write.csv(sig.matrix1, file = "Only sig cor.csv")

#At this stage we can take what we have and look at the data and at relationships in the data. The following will be good for digging deeper on specific parts of the data set that we think are particularly interesting.


#Number coding matrix
symnum(res, abbr.colnames = FALSE)

#install.packages("corrplot")
library(corrplot)

#This is a nice visual aide but is better for a subset of the data
plot1 <- corrplot(res, type = "upper", order = "hclust", 
         tl.col = "black", tl.srt = 45)

#Positive correlations are displayed in blue and negative correlations in red color. Color intensity and the size of the circle are proportional to the correlation coefficients. In the right side of the correlogram, the legend color shows the correlation coefficients and the corresponding colors.

# Insignificant correlation are crossed
corrplot(res2$r, type="upper", order="hclust", 
         p.mat = res2$P, sig.level = 0.01, insig = "blank")
# Insignificant correlations are leaved blank
corrplot(res2$r, type="upper", order="hclust", 
         p.mat = res2$P, sig.level = 0.01, insig = "blank")


#another good visualizatiojn tool for a subset of the data
install.packages("PerformanceAnalytics")
library("PerformanceAnalytics")

chart <- chart.Correlation(my_num_data, histogram=TRUE, pch=19)

plist <- list(chart, plot1)

for (i in seq(1, length(plist))) {
  pdf(paste0("Performance Analysis #",i,".pdf"), 7, 5)
  grid.arrange(grobs=chart[i:(i)], 
               ncol=1, left="Participant Rating", bottom="Condition")
  dev.off()
}

#a heatmap that works well with subsetted data
col<- colorRampPalette(c("blue", "white", "red"))(20)
heatmap(x = res, col = col, symm = TRUE)

#exporting to a high resolution plot
#I haven't figured this code out yet so don't worry about running this

install.packages("extrafont")
library(extrafont)
font_import() # this gets fonts installed anywhere on your computer, most commonly from MS Office install fonts. It takes a LONG while.

x = 1:20
y = x * 2

#setwd('/Users/.../Folder/') # place to save the file - can be over-ridden by putting a path in the file = “ “ part of the functions below.

pdf(file = map1, width = 12, height = 17, family = "Helvetica") # defaults to 7 x 7 inches
plot(x, y, type = "l")
dev.off()

postscript("map1.eps", width = 12, height = 17, horizontal = FALSE, 
            onefile = FALSE, paper = "special", colormodel = "cmyk", 
            family = "Courier")
            plot()
            dev.off()
            
            bitmap("map1.pdf", height = 12, width = 17, units = 'cm', 
            type = "tifflzw", res = 300)
plot()
dev.off()

tiff("heatmap1.tiff", height = 12, width = 17, units = 'cm', 
      compression = "lzw", res = 300)
      plot(x,y)
      dev.off()