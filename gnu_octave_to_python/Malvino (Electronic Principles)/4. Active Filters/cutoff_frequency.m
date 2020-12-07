%{
This function calculates fc (cutoff frequency) 
based on two input values:
    1. R1 (Resistance) in kOhm.
    2. C1 (Capacitance) in nF.
The unit of fc.    
%}

function fc = cutoff_frequency(R1,C1)
  fc = (10^6)/(2*pi*R1*C1);
endfunction
