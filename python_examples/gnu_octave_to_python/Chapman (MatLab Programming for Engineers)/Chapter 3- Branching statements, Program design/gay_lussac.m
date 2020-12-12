%{
Define variables:
  n --number of atoms (mol)
  P --pressure (kPa)
  R --ideal gas constant (L kpA mol^-1 K^-1)
  T --volume (L)
  V
%}

%initialize nRV
n = input('Enter moles of gas:'); 
R = 8.314; 
V = input('Enter volume of gas (in litres):');

%create an array of input temperatures
T = 250:1:400;

%calculate pressures
P = (n * R .* T)/V;

%create plot
figure(1);
plot(T, P, 'r');
title('Pressure vs Temperature in an ideal gas');
xlabel('Temperature (K)');
ylabel('Pressure (kPa)');
grid on;
