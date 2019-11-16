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

ggplot(DataSet, aes(VarNum1)) +
  geom_histogram() +
  facet_grid(VarCat1~.)
### create histogram by each of category in the VarCat1



## Bar Chart ----

ggplot(DataSet, aes(VarCat1)) +
  geom_bar()
### basic bar chart

ggplot(DataSet, aes(x=VarCat1)) +
  geom_bar()
ggplot(DataSet, aes(x=factor(VarCat1))) +
  geom_bar()
### same output as above


ggplot(DataSet, aes(x=factor(VarCat1), fill=factor(VarCat1))) +
  geom_bar() +
  facet_wrap(~VarCat2)
### barchart for VarCat1, group by VarCat2
### example of use - barchart for crosstab


## Scatterplot ----

