%{
This function calculates Id (drain current) 
based on four input values:
    1. Vgs (gain-source Voltage) in V.
    2. Vt (threshold Voltage) in V.
    3. Vds (drain-source Voltage) in V.
    4. DT (Device Transconductance) in uA/V^2.
The units of DT are uA.    
%}

function Id = drain_current(Vgs,Vt,Vds,DT)
  if Vgs < Vt
    Id = 0;
    fprintf('Cutoff region\n');
  else 
    if Vgs - Vt > Vds
      Id = DT * (Vgs - Vt - 0.5 * Vds) * Vds;
      fprintf('Triode region\n');
    else
      Id = 0.5 * DT * (Vgs - Vt)^2;
      fprintf('Saturation region\n');
    endif
  endif
endfunction