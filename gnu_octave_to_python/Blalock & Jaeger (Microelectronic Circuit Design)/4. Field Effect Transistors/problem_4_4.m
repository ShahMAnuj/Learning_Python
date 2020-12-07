%{
This program calculates PT (Process Transconductance) based on three values:
    1. DCSD (Dielectric Constant for Silicon Dioxide) in F/cm.
    2. EM (Electron Mobility) in cm^2/Vs.
    3. OT (Oxide Thickness) in nm.
The units of PT are uA/V^2.    
%}

DCSD = 3.9 * 8.854 * 1E-14; 
EM = input('Electron mobility:');
OT = input('Oxide thickness:'); 

format short;
PT = 1E13 * (DCSD/OT) * EM