# Set working directory to the project folder (optional but handy)
setwd("C:/Users/Owner/OneDrive - University of Hertfordshire/MCS/Team Research and Development/Grop project/Group-A23")

# Read the CSV file in that folder
hapiness_report_2022 <- read.csv("hapiness_report_2022.csv")  # check exact spelling of the file

View(hapiness_report_2022)
colnames(hapiness_report_2022)[2] <- "happiness score"
print(head(hapiness_report_2022[, c("country", "happiness score", "income")]))


# working directory and load the happiness dataset
setwd("C:/Users/Owner/OneDrive - University of Hertfordshire/MCS/Team Research and Development/Grop project/Group-A23")

hapiness_report_2022 <- read.csv("hapiness_report_2022.csv")

# Quick check of the data
head(hapiness_report_2022)
colnames(hapiness_report_2022)

# Clean column name and count unique countries
# Rename 2nd column to 'happiness_score'
colnames(hapiness_report_2022)[2] <- "happiness_score"

# Number of unique countries in the dataset
n_countries <- length(unique(hapiness_report_2022$country))
n_countries

# clean dataset (remove rows with missing income)
hapiness_clean <- subset(hapiness_report_2022, !is.na(income))

# Check how many rows and a summary
nrow(hapiness_clean)
summary(hapiness_clean)

