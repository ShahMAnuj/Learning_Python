import numpy as np
import matplotlib.pyplot as plt

#prompt the user
L_input = input("Inductance (in milli-henries):") #example L = 0.25 mH 
C_input = input("Capacitance (in nano-farads):") #example C = 0.10 nF 
R_input = input("Resistance (in ohms):") #example R = 50 ohms
V0_input = input("Signal received (in milli-volts):") #example V0 = 10 mV

L = float(L_input) * 10**(-3)
C = float(C_input) * 10**(-9)
R = float(R_input)
V0 = float(V0_input) * 10**(-3)

#calculate the resonant frequency in Hz(f0), & then in kHz (f0_1)
f0 = (2 * np.pi * np.sqrt(L * C))**(-1)
f0_1 = f0/1000

#display the resonant frequency (f0_1) as an integer
print("The resonant frequency of the circuit is {} kHz.".format(f0_1))

#frequency (f) & angular frequency (w)
#Note: We cannot start frequency (f) from 0Hz, because at 0Hz, reactance of capcitor (Xc) would become infinite.
#Note: If we pick the range of frequency (f) to be too wide, then the computer may freeze.
#Note: Very often, we don't need an ultra-smooth plot (lots of points); often, a rough plot (fewer points) are sufficient. 
#MORAL OF THE STORY: Choosing the correct range for the frequency (f) is somewhat of an art. 

f = np.arange(0.1, 10**(6.3), 10**(4.434)) #this is an array!
w = 2 * np.pi * f

#reactance of inductor (Xl)
Xl = w * L

#susceptance of capcitor (Bc) & reactance of capacitor (Xc)
#Note: While calculating Xc, if we write Xc = Bc^(-1), then Python will thrown an error.
#Note: While calculating Xc, if we write Xc = 1/Bc, then Python will throw an error.
#MORAL OF THE STORY: When finding the element-by-element reciprocal of an array, 
#you have to be careful in choosing the correct operators.

Bc = w * C
Xc = np.power(Bc, -1)

#magnitude of impedance (I)
I = np.sqrt(R**2 + np.power(Xl - Xc, 2))

#signal across resistor (VR)
VR = R * V0 * np.power(I, -1)

#power supplied to resistor (PR)
PR = (np.power(VR, 2))/R

fig, ax = plt.subplots()
ax.plot(f,PR)
ax.set(
    xlabel='frequency (Hz)',
    ylabel='power to the resistor (watts)',
    title='frequency response of AM radio receiver'
)
ax.grid()
plt.show()

