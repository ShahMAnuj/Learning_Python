%{
Using Euler's method to solve the differential equation:
    y' = -2x^3 + 12x^2 -20x + 8.5
with:
    -initial condition y(x=0) = 1
    -range is x = 0 to x = 4
    -step size is 0.5 
%}

%set integration range
xi = 0;
xf = 4;

%initialize variables
x = xi;
y = 1;

%set step size (dx) and determine number of calculation steps (nc)
dx = 0.1;
nc = (xf - xi)/dx;

%ouput initial condition
fprintf('y(x = %f) = %f\n', x,y);

%loop to implement Euler's method and display results
for i = 1:nc
  dydx = -2 * x^3 + 12 * x^2 - 20 * x + 8.5;
  y = y + dydx * dx;
  x = x + dx;
  fprintf('y(x = %f) = %f\n', x,y);
end
