%{
This program calculates CD (Charge Density) based on three values:
    1. DCSD (Dielectric Constant for Silicon Dioxide) in F/cm.
    2. OT (Oxide Thickness) in nm.
    3. BAT (Bias Above Threshold) in V.
The units of CD are C/cm^2.    
%}


DCSD = 3.9 * 8.854 * 1E-14; 
OT = input('oxide thickness:'); 
BAT = input('bias above threshold:');

format short e;
CD = 1E7 * (DCSD/OT) * BAT