function [A0,A,B] = fourier_coefficients(f,a,b,N)
  A = zeros(1,N);
  B = zeros(1,N);
  
  %Computing the A(0) coefficient
  g = @(t) 1;
  A0 = inner_product(f,g,a,b);
  if A0<10^-5
        A0 = 0;
  end
  
  %Computing the A(k) coefficients
  for k= 1:N
    g = @(t) cos(k*t);
    A(k) = inner_product(f,g,a,b);
    if A(k)<10^-5
        A(k) = 0;
    end
  endfor
  
  %Computing the B(k) coefficients
  for k= 1:N
    g = @(t) sin(k*t);
    B(k) = inner_product(f,g,a,b);
    if B(k)<10^-5
        B(k) = 0;
    end
  endfor
endfunction
