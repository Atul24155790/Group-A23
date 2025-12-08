happy <- read.csv("happiness_report_2022.csv", stringsAsFactors = TRUE)
happy$income_group <- ifelse(
  happy$income %in% c("Low income", "Lower middle income"),
  "Low & Lower middle income",
  "High & Upper middle income"
)
happy$income_group <- as.factor(happy$income_group)
table(happy$income, happy$income_group)
library(ggplot2)
ggplot(happy, aes(x = income_group, y = score, fill = income_group)) +
  geom_boxplot() +
  labs(
    title = "Comparison of Mean Happiness Score by Income Group",
    x = "Income Group",
    y = "Happiness Score"
  ) +
  theme_minimal() +
  theme(legend.position = "none")
ggsave("happiness_boxplot.png", width = 8, height = 6)
