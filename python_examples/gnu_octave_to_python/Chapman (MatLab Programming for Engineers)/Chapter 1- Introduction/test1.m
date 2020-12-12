% This script file plots a decaying exponential,
% with the domain (0,10) and a step-size of 0.1

x = 0:0.1:10;
y = 2*exp(-0.2 * x);
plot (x,y);

