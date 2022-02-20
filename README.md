# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![alt text](https://github.com/DrZubi/MechaCar_Statistical_Analysis/blob/main/images/summary.PNG)
* The vehicle length and vehicle ground clearance coefficients from the regression analysis provide non-random amount of variance to the MPG values in the dataset.
* The p-value is significantly smaller than the assumed significance level of 0.05%. We can assume that there is sufficient evidence to reject our null hypothesis, conversely concluding that the slope of the linear model is not zero. 
* The linear model can predict MPG of Mechcar prototypes effectively because the model has an r-squared value of 0.7149. 

## Summary Statistics on Suspension Coils
### Total Summary:
![alt text](https://github.com/DrZubi/MechaCar_Statistical_Analysis/blob/main/images/total_summary.PNG)
### Lot Summary:
![alt text](https://github.com/DrZubi/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.PNG)

The variance for the entire dataset indicates that the manufacturing data meets the 100 PSI variance requirement. However, when looking at the lot summary table, we can conclude that lot 3 is showing a larger variance than lots 1 and 2 and the performance and consistency of lot 3 would not meet the suspension coil requirement.

## T-Tests on Suspension Coils

### T-Test on the Entire Lot

![alt text](https://github.com/DrZubi/MechaCar_Statistical_Analysis/blob/main/images/t_test_1.PNG)

We fail to reject the null hypothesis (our significance level of 0.05). In other words, the sample mean may be equivalent to the true population mean. 

### T-Test on Three Plots

#### Lot 1:
![alt text](https://github.com/DrZubi/MechaCar_Statistical_Analysis/blob/main/images/lot_1.PNG)

Conclusion: We fail to reject the null hypothesis since the p-value is equal to 1. 

#### Lot 2:
![alt text](https://github.com/DrZubi/MechaCar_Statistical_Analysis/blob/main/images/Lot_2.PNG)

Conclusion: We fail to reject the null hypothesis since the p-value is greater than 0.05. 

#### Lot 3:
![alt text](https://github.com/DrZubi/MechaCar_Statistical_Analysis/blob/main/images/lot_3.PNG)

Conclusion: We can reject the null hypothesis since the p-value is less than 0.05. The mean of the sample is significantly smaller than the previous two lots. 

## Study Design: MechaCar vs Competition

Study Focus: Look at the performance/cost index of MachaCar to their competitors.

### Metrics:
* Miles Per Gallon (MPG): Independent Variable
* Horsepower: Independent Variable 
* Engine Type (Hybrid, EV, Gas): Independent Variable
* Cost: Dependent Variable
* Safety Rating: Independent Variable
* Model Type (SUV, Coupe, Truck, Etc.): Independent Variable

### Hypothesis Testing:
* Null Hypothesis: MechaCar is performance/cost index is comparable to their competitors.
* Alternative Hypothesis: MechaCar is not comparable to their competitors. 

### Statistical Tests:
* Perform a multiple linear regression model to investigate the correlations between the independent and dependent variables. 

### Data needed:
This study would require collecting data on MechaCar and their competitor’s car models and their performances.
