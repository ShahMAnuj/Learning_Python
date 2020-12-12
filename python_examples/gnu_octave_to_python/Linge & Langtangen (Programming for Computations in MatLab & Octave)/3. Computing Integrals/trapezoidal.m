%To be saved in the file "trapezoidal.m"

function integral = trapezoidal(f,a,b,n)
  h = (b - a)/n; ... h = step-size
  X = f(a) + f(b); ... X = sum of extreme values of the function
  R = 0; ... R = sum of remaining values of the function
  for i = 1:(n-1) 
    x(i) = a + i*h; 
    R = R + f(x(i));  
  endfor
  integral = 0.5*h*(X + 2*R);
endfunction