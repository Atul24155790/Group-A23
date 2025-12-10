# Commit 1: added header comment
# Load necessary library
library(ggplot2)

# Read dataset
happy <- read.csv("happiness_report_2022.csv", stringsAsFactors = TRUE)

# Optional: Convert income to factor if needed
happy$income <- as.factor(happy$income)

# Combine income groups into two main categories
happy$income_group <- ifelse(
  happy$income %in% c("Low income", "Lower middle income"),
  "Low & Lower middle income",
  "High & Upper middle income"
)

# Convert combined group to factor
happy$income_group <- as.factor(happy$income_group)

# Check new income groups (optional)
table(happy$income, happy$income_group)

# -----------------------------
# Box Plot
# -----------------------------

ggplot(happy, aes(x = income_group, y = score, fill = income_group)) +
  geom_boxplot() +
  labs(
    title = "Comparison of Mean Happiness Score by Income Group",
    x = "Income Group",
    y = "Happiness Score"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

# -----------------------------
# Save Plot
# -----------------------------
ggsave("happiness_boxplot.png", width = 8, height = 6)
sum(is.na(happy))
summary(happy$score)
# Preview first rows
head(happy)
# Number of countries
n_countries <- nrow(happy)
print(paste("Number of countries:", n_countries))
