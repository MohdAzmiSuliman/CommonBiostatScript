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

kable(object, digits = 2)
### display object in nice table
### limit numerical data into 2 decimal points


summary(object)
### summary of object - numerical: min, 1Q, median, mean, 3Q, max. categorical: count

describe(object)
### better summary than base::summary function. variable number, count of data in the variable, mean, sd, median, min, max, range
### unfortunately doesn't count for categorical
### require psych

levels(object)

round(Object, 2)
### view object up to 2 decimal point




## Data Selection ----

DataSet [, 1:5]
### select Variable 1 until Variable 5

DataSet [, c(2, 4:10, 12)]
## Select variable 2, 4 to 10 and variable 12

DataSet_Num <- DataSet %>%
  select_if(is.numeric)
### select numerical variables only, and put in new object

DataSet3 <- DataSet %>%
  filter(VarNum > 2.5)
### select dataset with VarNum value of more than 2.5
### for value and more than, use >= or <=


DataSet_Complete <- DataSet_Num %>%
  filter(!is.na(VarNum1))
### filter Dataset, only select data with complete observation
### i.e. pairwise selection

## Convert Data ----

DataSet3 <- DataSet %>%
  mutate(VarNew = VarOld/2)
### create new variable, VarNew, from VarOld divide by 2

DataSet3 <- DataSet %>%
  mutate(VarNewCat = if_else(VarNew > 25, "Category 1", "Category 2"))
### Create new variable, VarNewCat, from VarNew. if VarNew value > 25, name as Category 1, otherwise name as Category 2





