%{
This function calculates f0 (resonant frequency) 
based on two input values:
    1. L (inductance) in mH.
    2. C (capacitance) in uF.
The unit of f0 is Hz.    
%}

function f0 = resonant_frequency(L,C)
  f0 = (10^(4.5))/(2*pi*sqrt(L*C));
endfunction
