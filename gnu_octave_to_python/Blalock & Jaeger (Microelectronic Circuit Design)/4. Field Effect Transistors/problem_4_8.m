%{
This program calculates DT (Device Transconductance) based on three values:
    1. W (Width) in um.
    2. L (Length) in um.
    3. PT (Process Transcondutance) in uA/V^2.
The units of DT are uA/V^2.    
%}


W = input('Width:');
L = input('Length:');
PT = input('Process transconductance:');

AR = W/L; ... AR (Aspect Ratio)
DT = PT * AR
