library(ggplot2)
happy <- read.csv("happiness_report_2022.csv", stringsAsFactors = TRUE)
happy$income <- as.factor(happy$income)
ggplot(happy, aes(x = income, y = score, fill = income)) +
  +     geom_boxplot() +
  +     labs(
    +         title = "Comparison of Mean Happiness Score by Income Group",
    +         x = "Income Group",
    +         y = "Happiness Score"
    +     ) +
  +     theme_minimal() +
  +     theme(legend.position = "none")
ggsave("happiness_boxplot.png", width = 8, height = 6)
