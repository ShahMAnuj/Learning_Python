function answer = inner_product(f,g,a,b)
  product = @(z) f(z).*g(z);
  P = b-a;
  answer = (2/P).*integral(product,a,b);
endfunction
