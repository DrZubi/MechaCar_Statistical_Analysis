##Deliverable 1##

#Loading packages
library(dplyr)
library(rstudioapi)

#Setting working directory to document path
setwd(dirname(getActiveDocumentContext()$path))  
getwd()

#Reading csv files
csv = read.csv(file = 'data/MechaCar_mpg.csv')
df_mechaCar = data.frame(csv)
head(df_mechaCar)

#Linear regression
model = lm(mpg ~ ., data=df_mechaCar)

#Summary Statistics to find p-value and r-squared value
summary(model)


##Deliverable 2##

#Reading the csv file
csv = read.csv(file = 'data/Suspension_Coil.csv')
df_suspension_coil = data.frame(csv)

#Statistical Summary
total_summary = df_suspension_coil %>% summarize(Mean=mean(PSI),
                                         Median=median(PSI),
                                         Var=var(PSI),
                                         Std=sd(PSI))

#Grouping the manufacturing lots by their statistical summary
lot_summary = df_suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                               Median=median(PSI),
                                                                               Var=var(PSI),
                                                                               Std=sd(PSI))

total_summary


##Deliverable 3##

#Performing T-test on PSI
t.test(df_suspension_coil$PSI, mu = 1500)

#Performing t_test on the manufacturing lots

Lot1 = subset(df_suspension_coil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(df_suspension_coil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(df_suspension_coil, Manufacturing_Lot == 'Lot3')



t.test(Lot1$PSI, mu = 1500) 

t.test(Lot2$PSI, mu = 1500)

t.test(Lot3$PSI, mu = 1500)



#t.test(df_suspension_coil$PSI, mu = 1500, subset = Manufacturing_Lot=="Lot1")
#t.test(df_suspension_coil$PSI, mu = 1500, subset = Manufacturing_Lot=="Lot2")
#t.test(df_suspension_coil$PSI, mu = 1500, subset = Manufacturing_Lot=="Lot3")




