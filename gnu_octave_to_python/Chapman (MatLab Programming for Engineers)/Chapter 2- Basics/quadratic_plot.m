%Plotting a quadratic

x = 0:1:10; %input vector

y = x .^2 - 10 .*x +15;
%output vector
% notice how we've used array exponentiation (x .^2) and not matrix exponentiation (x^2)
% notice how we've used array multiplication (-10 .*x) and not matrix multiplication (-10 * x)

plot(x,y)