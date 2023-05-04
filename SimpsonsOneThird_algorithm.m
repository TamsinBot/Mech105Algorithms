function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs: x vector of independent variables, y vector with dependent
% variables. (make sure both are same length, x is equally spaced)
% Outputs: the numerical integral calculated

if length(x) ~= length(y)
    error('Error: The vectors x and y must have the same length.');
end

% Check if x is equally spaced
dx = diff(x);
if max(abs(dx - dx(1))) > eps 
    error('Error: The vector x must be equally spaced.');
end


    
n = length(x) - 1;

% Apply Simpson's 1/3 rule


h = x(2) - x(1);
I = y(1) + y(end) + 4*sum(y(2:2:end-1)) + 2*sum(y(3:2:end-2));
I = I * h/3;


if mod(n, 2) ~= 0
   warning('Warning: The trapezoidal rule will be used for the last interval.');
   I = I + ((x(end) - x(end-1)) * (y(end) + y(end-1)) / 2);
end

if length(x)==2
   warning('Warning: The trapezoidal rule will be used, due to 2 input arguments');
   I =  ((x(end) - x(1)) * (y(end) + y(1)) / 2);
end

end