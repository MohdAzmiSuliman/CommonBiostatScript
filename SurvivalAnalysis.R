# Survival ANalysis ----

## Required Library ----

library (survival)
### for KM estimate

library()
### for plot survival 

## Univariable

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
        

