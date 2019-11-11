# ggplot ----

## Prerequisite ----
install.packages("ggplot2")
library(ggplot2)

## Histogram ----

ggplot(DataSet, aes(VarNum1)) +
  geom_histogram()
### basic histogram

ggplot(DataSet, aes(VarNum1)) +
  geom_histogram(aes(y=..density..)) +
  stat_function(fun = dnorm, colour = "ColourName",
                args = list(mean = mean(DataSet$VarNum1),
                            sd = sd(DataSet$VarNum1)))
### histogram with normal line

## Bar Chart ----

ggplot(DataSet, aes(VarCat1)) +
  geom_bar()
### basic bar chart


