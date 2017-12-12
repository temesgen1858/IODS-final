#Name: Abera Temesgen
#email: temesgen.abera@helsinki.fi
#date:11 December 2017
#Data wrangling using Boston data
#The Boston data contain variables that determine housing values in the suburbs of Boston, USA. There are 506 observations of 14 variables in the dataset. But for the linear and logistic regression, we only use the following four variables.
#"crim"- per capita crime rate by town
#"lstat" -lower status of the population (percent)
#"rad" - index of accessibility to radial highways
#"tax" - full-value property-tax rate per $10,000
#load the required libraries
rm(list=ls())
require(dplyr)
require(MASS)
#load the Boston data
data("Boston")
#keep only "crim","lstat","rad","tax" and exclude unneeded variables from boston data 
keep_col <-c("crim","lstat","rad","tax")
extract_boston <- dplyr::select(Boston, one_of(keep_col))
# create a new binary variable (crim_high_rate) using crime rate > 50% as high crime rate
extract_boston <- mutate(extract_boston,high_crim_rate= crim >0.5)
#Save the data as csv
write.table(extract_boston,"D:/final_assignment/IODS-final/boston_new.csv", sep=";", row.names = TRUE) 

