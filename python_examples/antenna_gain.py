#Purpose: 
#    This program plots the gain pattern for a microwave dish antenna.
#Define variables:
#    G -- gain of the microwave dish antena
#    theta -- angle from the boresite of the dish (radians)    

import numpy as np
import matplotlib.pyplot as plt

#Caculate the gain versus angle
theta = np.arange(-0.5*np.pi, 0.5*np.pi, 0.0142*np.pi) 
G = abs(np.sin(4*theta)/(4*theta))

#Polar plot of gain
ax = plt.subplot(111, projection='polar')
ax.plot(theta, G)
ax.grid(True)
ax.set_title("Gain pattern for a microwave dish antenna")
plt.show()

