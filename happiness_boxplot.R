# Commit 1: add comment for Git
# Commit 2: another tiny comment
# Commit 3: comment number three
# Commit 4: tiny change for Git
# Commit 5: another tiny change
# Load necessary library
library(ggplot2)

# Load your dataset
happy <- read.csv("happiness_report_2022.csv", stringsAsFactors = TRUE)

# Combine income groups into two main categories
happy$income_group <- ifelse(
  happy$income %in% c("Low income", "Lower middle income"),
  "Low & Lower middle income",
  "High & Upper middle income"
)

# Convert to factor
happy$income_group <- as.factor(happy$income_group)

# Create the box plot
ggplot(happy, aes(x = income_group, y = score, fill = income_group)) +
  geom_boxplot() +
  labs(
    title = "Comparison of Mean Happiness Score by Income Group",
    x = "Income Group",
    y = "Happiness Score"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

# Save the plot as PNG
ggsave("happiness_boxplot.png", width = 8, height = 6)