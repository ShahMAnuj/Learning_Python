%{
This function calculates Q (Quality factor) for a 2nd-order LC filter
based on two input values:
    1. L (inductance) in mH.
    2. C (capacitance) in uF.
    3. R (resistance) in ohms.
Q is a unitless quantity.    
%}

function Q = q_factor_2(L,C,R)
  f0 = resonant_frequency(L,C)/1000;
  Q = R/(2*pi*f0*L);
endfunction