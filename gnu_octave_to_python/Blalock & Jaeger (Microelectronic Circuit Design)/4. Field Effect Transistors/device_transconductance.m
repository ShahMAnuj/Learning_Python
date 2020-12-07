%{
This function calculates DT (Device Transconductance) 
based on three input values:
    1. W (Width) in um.
    2. L (Length) in um.
    3. PT (Process Transconductance) in uA/V^2.
The units of DT are uA/V^2.    
%}

function DT = device_transconductance(W,L,PT)
  AR = W/L;
  format short;
  DT = PT * AR;
endfunction
