# Set working directory to the project folder (optional but handy)
setwd("C:/Users/Owner/OneDrive - University of Hertfordshire/MCS/Team Research and Development/Grop project/Group-A23")

# Read the CSV file in that folder
hapiness_report_2022 <- read.csv("hapiness_report_2022.csv")  # check exact spelling of the file

View(hapiness_report_2022)
colnames(hapiness_report_2022)[2] <- "happiness score"
print(head(hapiness_report_2022[, c("country", "happiness score", "income")]))

 n_countries <- length(unique(hapiness_report_2022$country)) #the number of unique countries