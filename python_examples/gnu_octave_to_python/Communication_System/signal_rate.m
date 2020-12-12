%{
This function calculates S (signal rate)
based on two values:
    1. N (data rate) in bits/s
    2. r (number of data elements per signal element) in bits/baud
The unit of S is bauds/s.    
%}

function S = signal_rate(N,r)
  S = N/r;
endfunction
