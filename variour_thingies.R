library(tidyverse)
install.packages("svglite")
library(svglite)
write_csv(mtcars, "mtcars.csv")

data(mtcars)

## Generate the graph
mpg_hp <- mtcars %>%
  ggplot(aes(x = mpg, y = hp, color = factor(cyl))) +
  geom_point() +
  labs(x = "Miles per galon",
       y = "Hourse power",
       color = "Number of cylinders",
       title = "How does horse power relate to miles per galon") +
  theme(text = element_text(size = 14))

mpg_hp

ggsave(filename = "mpg_hp.svg", plot = mpg_hp, width = 10, height = 5)