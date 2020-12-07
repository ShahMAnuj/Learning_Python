%prompt the user
L = input('Inductance (in henries):');
C = input('Capacitance (in farads):');
R = input('Resistance (in ohms):');
V0 = input('Signal received (in volts):');

%calculate the resonant frequency in Hz(f0), & then in kHz (f0_1)
f0 = (2 * pi * sqrt(L * C))^(-1);
f0_1 = f0/1000;

%display the resonant frequency (f0_1) as an integer
fprintf('The resonant frequency of the circuit is %d kHz.\n', f0_1);

%frequency (f) & angular frequency (w)
%Note: We cannot start frequency (f) from 0Hz, because at 0Hz, reactance of capcitor (Xc) would become infinite.
%Note: If we pick the range of frequency (f) to be too wide, then the computer may freeze.
%Note: Very often, we don't need an ultra-smooth plot (lots of points); often, a rough plot (fewer points) are sufficient. 
  %MORAL OF THE STORY: Choosing the correct range for the frequency (f) is somewhat of an art. 

f = 0:10^(4.434):10^(6.3); 
w = 2 * pi * f;


%reactance of inductor (Xl)
Xl = w * L;

%susceptance of capcitor (Bc) & reactance of capacitor (Xc)
%Note: While calculating Xc, if we write Xc = Bc^(-1), then Octave will thrown an error.
%Note: While calculating Xc, if we write Xc = 1/Bc, then Octave will throw an error.
  %MORAL OF THE STORY: When finding the element-by-element reciprocal of an array, 
  %you have to be careful in choosing the correct operators.
      
Bc = w * C; 
Xc = Bc.^(-1); 

%magnitude of impedance (I)
I = sqrt(R.^2 + (Xl - Xc).^2);

%signal across resistor (VR)
VR = R * V0 * I.^(-1);

%power supplied to resistor (PR)
PR = (VR .^2)/R;
plot(f,PR);
title('Frequency response of AM radio receiver');
ylabel('Power to the resistor (watts)');
xlabel('Frequency (Hz)');
grid on;



