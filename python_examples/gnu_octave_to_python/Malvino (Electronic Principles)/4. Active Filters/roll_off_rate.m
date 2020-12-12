%{
This function calculates ROR (Roll-Off Rate) of a Butterworth filter 
based on one input value:
    n (order of the Butterworth filter ~ number of capacitors it contains)
The unit of ROR is dB/decade.   
%}

function ROR = roll_off_rate(n)
  ROR = 20*n;
endfunction
