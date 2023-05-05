
This MATLAB function completes numerical integration of given values using Simpson's 1/3 rule
__________

**Inputs:** x vector of independent variables, y vector of dependent variables

*Note: the x vector must be equally spaced, both vectors must be equal in length*
__________

**Outputs:** the numerical integral calculated
___________

**Example:** Use Simpsons 1/3 to calculate the numerical integral of the following values:

| x | y |
|---|---|
| 1 | 3 |
| 2 | 8 |
| 3 | 7 |
| 4 | 12 |
| 5 | 16 |
| 6 | 4 |

Simpson( 1 2 3 4 5 6 , 3 8 7 12 16 4)
