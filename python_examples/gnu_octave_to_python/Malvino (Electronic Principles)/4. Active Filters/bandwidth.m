%{
This function calculates BW (BandWidth) 
based on two input values:
    1. f1 (lower cutoff frequency) in Hz/kHz/etc.
    2. f2 (upper cutoff frequency) in Hz/kHz/etc respectively.
The unit of BW is Hz/kHz/etc respectively.    
%}

function BW = bandwidth(f1,f2)
  BW = f2 - f1;
endfunction
