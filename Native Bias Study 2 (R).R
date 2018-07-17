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

#With the tidyverse package you end up not needing "car" (yet anyway). tidyverse is a package that contains several other useful packages including dplyr. With the dplyr recode function you can consolidate your many lines of code into just one.
StudyTwoData$Nationalism_Nationalism_1 <- recode(StudyTwoData$Nationalism_Nationalism_1, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6, "Strongly Agree" = 7)

str(StudyTwoData)

StudyTwoData[,6]
as.numeric(StudyTwoData[,6])
StudyTwoData[,6] <- as.numeric(levels(StudyTwoData[,6]))[StudyTwoData[,6]]


StudyTwoData$Nationalism_Nationalism_2 <- dplyr::recode(StudyTwoData$Nationalism_Nationalism_2, "Strongly Disagree" = 1, "Disagree" = 2, "Somewhat Disagree" = 3, "Neither Disagree nor Agree" = 4, "Somewhat Agree" = 5, "Agree" = 6,"Strongly Agree" = 7)
StudyTwoData[,7]
as.numeric(StudyTwoData[,7])
StudyTwoData[,7] <- as.numeric(levels(StudyTwoData[,7]))[StudyTwoData[,7]]

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

StudyTwoData[,228]
as.numeric(StudyTwoData[,228])
StudyTwoData[,228] <- as.numeric(levels(StudyTwoData[,228]))[StudyTwoData[,228]]

StudyTwoData[,229]
as.numeric(StudyTwoData[,229])
StudyTwoData[,229] <- as.numeric(levels(StudyTwoData[,229]))[StudyTwoData[,229]]

StudyTwoData[,230]
as.numeric(StudyTwoData[,230])
StudyTwoData[,230] <- as.numeric(levels(StudyTwoData[,230]))[StudyTwoData[,230]]

StudyTwoData[,231]
as.numeric(StudyTwoData[,231])
StudyTwoData[,231] <- as.numeric(levels(StudyTwoData[,231]))[StudyTwoData[,231]]

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


