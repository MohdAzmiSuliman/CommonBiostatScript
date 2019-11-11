# Linear Regression ----

## Univariable ----

lm(VarOutcome ~ VarPred1,
   data = DataSet)
### simple linear regression between dependent variable - VarOutcome, with independent variable - VarPred1

ModelName <- lm(VarOutcome ~ VarPred1,
                data = DataSet)
summary(ModelName)
kable(tidy(ModelName))
### Simple linear regression between dependent variable - VarOutcome, with independent variable - VarPred1
### tidy for clean looking table
### however tidy didn't have R^2 value, so still need summary

kable(tidy(ModelName, conf.int = T))
### confident interval for estimate (beta)

kable(tidy(ModelName, conf.int = T), digits = 2)
### above table with only 2 decimal points

## Multivariable ----

MLRModelName <- lm(VarOutcome ~ VarPred1 + VarPred2 + VarPred1:VarPred2,
                   data = DataSet)
summary(MLRModelName)
kable(tidy(MLRModelName, conf.int = T), digits = 2)
### MLR for VarPred1 and VarPred2 with interaction term for VarPred1 and VarPred2
### output with confident interval and 2 decimal points

## Model Comparison ----

anova(MLRModel01, MLRModel02)
### complare MLRModel01 and MLRModel02
### however only if same number of observation
### require pairwise deletion e.g. !is.na

## Confounder ----

### e.g. confounder between VarPred1 and VarPred2

ModelVarPred1 <- tidy(lm(VarOutcome ~ VarPred1,
                         data = DataSet))
ModelVarPred2 <- tidy(lm(VarOutcome ~ VarPred02,
                         data = DataSet))
ModelVarPredCon <- tidy(lm(VarOutcome ~ VarPred1 + VarPred2,
                           data = DataSet))
(ModelVarPredCon[2,2]-ModelVarPred1[2,2])-(ModelVarPred1[2,2])*100
(ModelVarPredCon[2,2]-ModelVarPred2[2,2])-(ModelVarPred2[2,2])*100


## Interaction ----

### compare interaction using anova function

## Predicted and Residual Value ----

augment(ModelName)
### Calculate predicted and residual value
### warning! beware of very big data. use head or tail to show only several rows

kable(augment(ModelName))
### nicer result

kable(augment(ModelName), digits = 2)
### 2 decimal





