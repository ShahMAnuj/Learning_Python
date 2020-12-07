%{
This function calculates Ron (on Resistance) based on four values:
    1. PT (Process Transcondutance) in uA/V^2.
    2. AR (Aspect Ratio) which is unitless
    3. Vgs (gain-source Voltage) in V.
    4. Vt (threshold Voltage) in V.
The unit of Ron is kOhm.    
%}

function Ron = on_resistance(PT,AR,Vgs,Vt)
  format short; 
  DT = PT * AR; ... DT (Device Transconductance)
  Ron = (1E3)/(DT * (Vgs - Vt));
endfunction
