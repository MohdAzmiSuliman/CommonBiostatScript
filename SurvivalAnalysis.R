# Survival ANalysis ----

## Required Library ----

library (survival)
### for KM estimate

library()
### for plot survival 

## Univariable ----

survfit(Surv(time = VarTime, event == "ObsOutcome") ~ 1,
                 data = DataSet,
                 type = "kaplan-meier")
### KM Estimate for overall
### VarTime - duration of event (numerical), if only date variable is available, calculate duration using lubridate function

survfit(Surv(time = VarTime, event == "ObsOutcome") ~ VarCat1,
        data = DataSet,
        type = "kaplan-meier")
### KM Estimate for categorical variable (VarCat1)

coxph(Surv(time = VarTime, event == "ObsOutcome") ~ VarNum1,
        data = DataSet)
### Cox Proportional Hazard for numerical variable (VarNum1)
### default method - efron method

coxph(Surv(time = VarTime, event == "ObsOutcome") ~ VarNum1,
      data = DataSet,
      method = "breslow")
### breslow method

## Survival Plot ----

ggsurvplot(KMEstimateObject,
           data = Dataset,
           risk.table = T)
### ggplot for survival plot for single KM plot (overall)
### need to calculate KM Estimate first, save in object name KMEstimateObject

ggsurvplot(KMEstimateObject2,
           data = Dataset,
           risk.table = T,
           linetype = c(1,2),
           pval = T)
### ggplot for survival plot for KM estimate, group by the variable category (refer how to calculate KM estimate)
### linetype - if 2 line (2 group), c(1,2). if 3 line, c(1,2,3). etc

## Median Survival Time ----

quantile(KKMEstimateObject, probs = 0.5)


## Model Checking ----

