%{
This function calculates Q (Quality factor) for an ideal bandpass filter
based on two input values:
    1. f1 (lower cutoff frequency) in Hz.
    2. f2 (upper cutoff frequency) in Hz/kHz/etc respectively.
Q is a unitless quantity.    
%}

function Q = q_factor(f1,f2)
  Q = centre_frequency(f1,f2)/bandwidth(f1,f2);
endfunction
