hapiness_report_2022 <- read.csv("D:/UK/UNI/team research and dev project/main assignment/hapiness_report_2022.csv")
View(hapiness_report_2022)
colnames(hapiness_report_2022)[2] <- "happiness score"
print(head(hapiness_report_2022[, c("country", "happiness score", "income")]))