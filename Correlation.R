#-Correlation----
# Author: Wan Nor Arifin

## Scatter Plot ----

## Basic Scatter Plot

plot(DataSet)
# scatter plot for all variables in Dataset

plot(DataSet$Var1 ~ Dataset$Var3)
# scatter plot for variables from Var1 to Var3

## Scatter Plot using ggplot ----

ggplot(DataSet, aes(Var1, Var3)) +
  geom_point()
# ggplot scatterplot between Var1 and Var3
# preferably compared to basic scatter plot
# unfortunately need to do for each pair

ggplot(DataSet, aes(Var1, Var3)) +
  geom_point() +
  stat_smooth(method = "lm", col = "ColourName")
# same as above, with best fit line (i.e. lm method)



##-Pearson's correlation----

cor(DataSet$Var1, Dataset$Var3)
# Pearson's correlation between Var1 and Var3
# only between 2 variables

cor(DataSet, use = "complete.obs", method = "pearson")
# Pearson's correlation for all variables in DataSet
# require use = "complete.obs" parameter

Object01 <- cor(DataSet$Var1, Dataset$Var3)
kable(round(Object01,2))
# Pearson's correlation between Var1 and Var3
# the result is save in Object1
# Neatly present, with 2 decimal point


cor.test(cholest$chol, cholest$age)
# More extensive Pearson's correlation
# included t, df, p-value, 95% CI


## Correlogram ----

corrplot(Object01, method="circle")
# correlogram for Object01
# require stat::cor to be run first

corrplot(cor(DataSet$Var1, Dataset$Var3))
# correlogram for Pearson's Correlation between Var1 and Var3

corrplot(cor(DataSet, use = "complete.obs", method = "pearson"))
# correlogram for pearson's correlation in Dataset, with only complete obsercation only

