%{
This function calculates Bmin (minimum Bandwidth for ISI free transmission)
based on two values:
    1. N (data rate) in bits/s or kbits/s
    2. L (number of signal elements needed)
The unit of Bmin is Hz or kHz respectively (depending on units of N).    
%}

function Bmin = hartley(N,L)
  Bmin = N/(2*data_elements(L));
endfunction