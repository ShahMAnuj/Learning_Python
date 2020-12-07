PT = 100; ... when value of PT isn't given, assume it to be 100
AR = 100/1; 

%CASE I
Vgs = 5;
Vt = 0.65;
Ron = on_resistance(PT,AR,Vgs,Vt)

%CASE II
Vgs = 2.5;
Vt = 0.5;
Ron = on_resistance(PT,AR,Vgs,Vt)

%CASE III (example)
Ron = on_resistance(25,10,2,1)

%CASE III (example)
Ron = on_resistance(25,10,5,1)