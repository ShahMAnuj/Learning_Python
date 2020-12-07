%{
This function calculates r (number of data elements per signal element)
based on one value:
    L (number of signal elements needed)
The unit of r is bits/baud.    
%}

function r = data_elements(L)
  r = log2(L);
endfunction
