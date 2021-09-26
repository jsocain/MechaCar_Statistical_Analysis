# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![Summary](images/summary.png)

- Vehicle length and ground clearance provided a non-random amount of variance to the mpg values in the dataset.
- The slope of the linear model is NOT considered to be zero, because the p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
- This linear model does predict mpg of MechaCar prototypes effectively, because the r-squared value is 0.71 and the p-value is significant.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

When looking at the total summary it appears the variance does not exceed 100 pounds per square inch at 62.29; however, when looking at the lot summary, Lots 1 and 2 do meet design specifications, but the variance at Lot 3 exceeds 100 pounds per square inch at 170.29. 

![Total_Summary](images/total_summary.png)
![Lot_Summary](images/lot_summary.png)