%{
This function calculates NOR (Number of Ripples) of a Chebyshev filter 
based on one input value:
    n (order of the Chebyshev filter ~ number of capacitors it contains)
NOR is a unitless quantity.
%}

function NOR = number_of_ripples(n)
  NOR = n/2;
endfunction
