
This MATLAB function completes a linear regression line for a given set of data. It also eliminates outliers, and calculates a Rsquared value to determine the accuracy of the line of best fit.
__________

**Inputs:** x-array of independent variables, y-array of dependent variables based on x

*Note: Both arrays must be the same size*
__________

**Outputs:** an x array sorted with outliers removed, a y array with outliers removed sorted based on x-values, the slope and y-intercept of the linear regression line, rSquared value
__________

**Example:** finding the linear regression line for the following data set

| x | y |
|---|---|
| 1 | 3 |
| 5 | 7 |
| 4 | 12.5 |
| 9 | 2 |
| 6 | 8 |

linearRegression( 1 5 4 9 6 , 3 7 12.5 2 8)
