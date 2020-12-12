%{
This function calculates Bmin (minimum Bandwidth for ISI free transmission)
based on one value:
    S (signal rate) in bauds/s
The unit of Bmin is Hz.    
%}

function Bmin = nyquist_isi(S)
  Bmin = S/2;
endfunction
