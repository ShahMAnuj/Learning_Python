%This function takes in 2 inputs (x,y) and returns 1 output [dydx]
function [dydx] = Derivs(x,y)
    dydx = -2 * x^3 + 12 * x^2 - 20 * x + 8.5;
endfunction