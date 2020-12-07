%This program is divided into two parts.

%PART I: To calculate DT (Device Transconductance)
W = 5; 
L = 0.5;  
PT = 200;

DT = device_transconductance(W,L,PT)

%{
PART II: To calculate Id (drain current) 
         and find region of operation,  
         for Vgs = 0, 1V, 2V,3V
%}
Vds = 0.25;
Vt = 0.8;

Vgs = 0; ... case 1
Id = drain_current(Vgs,Vt,Vds,DT)
Vgs = 1; ... case 2
Id = drain_current(Vgs,Vt,Vds,DT)
Vgs = 2; ... case 3
Id = drain_current(Vgs,Vt,Vds,DT)
Vgs = 3; ... case 4
Id = drain_current(Vgs,Vt,Vds,DT)