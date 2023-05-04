function [fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)
%linearRegression Computes the linear regression of a data set, while also
%taking out outliers and calculating the Rsqared value for accuracy
%
%   Inputs: x array, y array (same size)
%   Outputs: fX, fY, slope of linear regression line, y-intercept,
%   R-squared value


if length(x)~=length(y)
    error('make sure x and y arrays are the same size')
end


%sorting x and y vals
[sortedY, sortOrder] = sort(y);
sortedX = x(sortOrder);
y=sortedY
x=sortedX

%Taking out outliers
n=length(x);
W=floor((n+1)/4);
R=floor((3*n+3)/4);
Q1=y(W)
Q3=y(R)
IQR=Q3-Q1;

threshold = 1.5*IQR;
outliers = y < (Q1 - threshold) | y > (Q3 + threshold); 
fY = y(~outliers)
fX = x(~outliers)

%linear regression
y_avg=mean(fY);
x_avg=mean(fX);
SSx=sum((fX-x_avg).^2);
SP=sum((fX-x_avg).*(fY-y_avg));
slope=SP/SSx

intercept=y_avg-slope.*x_avg

line=slope.*fX+intercept

%calculate Rsquared
SStot=sum((fY-y_avg).^2);
SSres=sum((fY-line).^2);
Rsquared=1-(SSres/SStot)

end
