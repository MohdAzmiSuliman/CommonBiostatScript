# Data Wrangling ----

## Import Data ----

DataSet <- read_dta("files.dta")
### read .dta file (stata)
### require haven package

DataSet$VarName <- as.factor(DataSet$VarName)
### when using haven::read_dta, unable to convert directly categorical data
### !! warning: it will overwrite the variables. use other variables name if want to preserve the original variable

DataSet$VarRename <- as.factor(DataSet$VarName)
### same with above, but create new variables

DataSet2 <- DataSet %>% mutate (VarRename = as_factor(VarName))
### same with above
### require dplyr package


## Data Summary ----

str(object)
### display internal structure of data

view(object)
### open object to viewer (not adviseable for rmd)

head(object)
### display first several data 

kable(object)
### display 
### require knitr packages

summary(object)
