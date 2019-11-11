# Logistic Regression ----

## Univariable ----

glm(VarCatOutcome ~ VarPred1,
    family = binomial(link = "logit"),
    data = DataSet)
### simple logistic regression

ModelName <- glm(VarCatOutcome ~ VarPred1,
                 family = binomial(link = "logit"),
                 data = DataSet)
### simple logistic regression, save into object

summary(ModelName)

kable(tidy(ModelName))
### for clean table
