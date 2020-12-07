%This function takes in 3 inputs (x,y,h) and returns 2 outputs [x,ynew] 
function [x,ynew] = Euler(x,y,h)
   dydx = Derivs(x,y);
   ynew = y + dydx * h;
   x = x + h;
endfunction
