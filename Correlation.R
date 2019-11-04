#-Correlation----
# Author: Wan Nor Arifin

## Scatter Plot ----

## Basic Scatter Plot

plot(DataSet)
# scatter plot for all variables in Dataset

plot(DataSet$Var1 ~ Dataset$Var3)
# scatter plot for variables from Var1 to Var3

## Scatter Plot using ggplot ----

# preferably compared to basic scatter plot



##-Pearson's correlation----

cor(DataSet$Var1, Dataset$Var3)
# Pearson's correlation between Var1 and Var3
# only between 2 variables

cor.test(cholest$chol, cholest$age)
# More extensive Pearson's correlation
# included t, df, p-value, 95% CI
