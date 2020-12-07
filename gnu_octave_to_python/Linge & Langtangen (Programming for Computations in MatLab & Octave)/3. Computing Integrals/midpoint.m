%To be saved in the file "midpoint.m"

function integral = midpoint(f,a,b,n)
  h = (b-a)/n;
  x = a:h:b;
  sum = 0;
  for i = 1:n
    X(i) = 0.5*(x(i) + x(i+1));
    sum = sum + f(X(i));
  endfor  
  integral = h*sum;
endfunction  