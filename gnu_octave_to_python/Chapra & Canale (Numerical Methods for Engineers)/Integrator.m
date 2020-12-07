%This function takes in 4 inputs (x,y,h,xend) and returns 2 outputs [x,y]
function [x,y] = Integrator(x,y,h,xend)
  while x < xend
    h = min(h, xend-x);
    [x,y] = Euler(x,y,h);
  end
endfunction  
