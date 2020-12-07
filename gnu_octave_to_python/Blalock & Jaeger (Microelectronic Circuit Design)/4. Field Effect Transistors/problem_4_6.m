%{
This program calculates EV (Electron Velocity) based on two values:
    1. EM (Electron Mobility) in cm^2/Vs.
    2. EF (Electric Field) in V/cm.
The units of EV are cm/s.    
%}

EM = input('Electron mobility:');
EF = input('Electric field:');

format short e;
EV = EM * EF