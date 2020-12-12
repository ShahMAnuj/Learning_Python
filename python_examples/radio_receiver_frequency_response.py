import numpy as np
import matplotlib.pyplot as plt

#prompt the user
L = input("Inductance (in henries):")
C = input("Capacitance (in farads):")
R = input("Resistance (in ohms):")
V0 = input("Signal received (in volts):")

#calculate the resonant frequency in Hz(f0), & then in kHz (f0_1)
f0 = (2 * pi * sqrt(L * C))**(-1)
f0_1 = f0/1000

#display the resonant frequency (f0_1) as an integer
print("The resonant frequency of the circuit is {} kHz.".format(f0_1));

#frequency (f) & angular frequency (w)
#Note: We cannot start frequency (f) from 0Hz, because at 0Hz, reactance of capcitor (Xc) would become infinite.
#Note: If we pick the range of frequency (f) to be too wide, then the computer may freeze.
#Note: Very often, we don't need an ultra-smooth plot (lots of points); often, a rough plot (fewer points) are sufficient. 
#MORAL OF THE STORY: Choosing the correct range for the frequency (f) is somewhat of an art. 

f = np.arrange(0, 10^(4.434), 10^(6.3)) #this is an array!
w = 2 * pi * f

#reactance of inductor (Xl)
Xl = w * L

#susceptance of capcitor (Bc) & reactance of capacitor (Xc)
#Note: While calculating Xc, if we write Xc = Bc^(-1), then Python will thrown an error.
#Note: While calculating Xc, if we write Xc = 1/Bc, then Python will throw an error.
#MORAL OF THE STORY: When finding the element-by-element reciprocal of an array, 
#you have to be careful in choosing the correct operators.

