# Step 1: working directory and load the happiness dataset
setwd("C:/Users/Owner/OneDrive - University of Hertfordshire/MCS/Team Research and Development/Grop project/Group-A23")

hapiness_report_2022 <- read.csv("hapiness_report_2022.csv")

# Step 2: quick check of the data
head(hapiness_report_2022)
colnames(hapiness_report_2022)

# Step 3: clean column name and count unique countries
colnames(hapiness_report_2022)[2] <- "happiness_score"

n_countries <- length(unique(hapiness_report_2022$country))
n_countries

# Step 4: clean dataset (remove rows with missing income)
hapiness_clean <- subset(hapiness_report_2022, !is.na(income))

nrow(hapiness_clean)
summary(hapiness_clean)
<<<<<<< HEAD:analysis.R
asa
=======

# Step 5: descriptive statistics of happiness by income group
library(dplyr)

group_stats <- hapiness_clean %>%
  group_by(income) %>%
  summarise(
    n_countries   = n(),
    mean_happiness = mean(happiness_score, na.rm = TRUE),
    sd_happiness   = sd(happiness_score, na.rm = TRUE)
  )

group_stats

# Step 6: boxplot of happiness score by income group
hapiness_clean$income <- factor(
  hapiness_clean$income,
  levels = c("Low income",
             "Lower middle income",
             "Upper middle income",
             "High income"),
  ordered = TRUE
)

boxplot(happiness_score ~ income,
        data  = hapiness_clean,
        main  = "Happiness Score by Income Group",
        xlab  = "Income Group",
        ylab  = "Happiness Score")

# Step 7: histogram of overall happiness scores
hist(hapiness_clean$happiness_score,
     main = "Distribution of happiness scores",
     xlab = "Happiness score")

# Step 8: One-way ANOVA to test difference in mean happiness across income groups
anova_model <- aov(happiness_score ~ income, data = hapiness_clean)
summary(anova_model)

# Step 9: Tukey post-hoc test for pairwise income group comparisons
tukey_results <- TukeyHSD(anova_model)
tukey_results

>>>>>>> 11b5931a9ad125279c81f2d53fd9726d72d69628:first 5 row.R
