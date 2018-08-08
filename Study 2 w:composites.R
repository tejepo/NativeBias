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

reduceddataset <- as.data.frame(reduceddataset)

my_num_data <- reduceddataset

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
write.csv(res, file = "new results.csv")
write.csv(matrix1, file = "new all cor with p.csv")
write.csv(sig.matrix1, file = "new Only sig cor.csv")

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

lm5 <- lm(`Columbus Day` ~ Colorblindness + Contact + `SLB (comp)` + Invisibility + `Historic Knowledge (%)`, reduceddataset)

lm5 <- lm(DV1_4 ~ Colorblind )