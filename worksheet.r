library(tidyverse)
library(ggplot2)

wine <- read.csv("winequality-white.csv", sep = ";")
print(wine)

wine <- mutate(wine, good = ifelse(quality > 5, 1, 0))

ggplot(wine, aes(x = residual.sugar, fill = as.factor(good))) +
geom_histogram(position = "identity", alpha = .5, bins = 100) +
scale_fill_manual(values=c("#69b3a2", "#404080")) +
facet_wrap(vars(good))