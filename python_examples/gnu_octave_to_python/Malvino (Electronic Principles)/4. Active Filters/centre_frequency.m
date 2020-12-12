%{
This function calculates f0 (centre frequency) 
based on two input values:
    1. f1 (lower cutoff frequency) in Hz/kHz/etc.
    2. f2 (upper cutoff frequency) in Hz/kHz/etc respectively.
The unit of f0 is Hz/kHz/etc respectively.    
%}

function f0 = centre_frequency(f1,f2)
  f0 = sqrt(f1*f2);
endfunction
