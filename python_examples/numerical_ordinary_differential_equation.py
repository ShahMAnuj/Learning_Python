#We are going to numerically solve the ODE (ordinary differential equation):
#    y'(x) = -2x^3 + 12x^2 -20x + 8.5
#with:
#    -initial condition y(t=0) = 1
#    -range is t = 0 to t = 4
#    -step size is 0.01 

import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp

#Defining the function on the RHS (right-hand side) of our ODE
def function(t,y):
    return -2 * t**3 + 12 * t**2 - 20 * t + 8.5 

#Solving the ODE using scipy.integrate.solve_ivp()
solution = solve_ivp(
    function, #The function on the RHS of our ODE
    [0,4],    #Timespan: t=0 to t=4
    [1],      #Initial value: y(0) = 1
    t_eval = np.arange(0,4,0.01) #Timestep: 0.01
)

#Plot
fig, ax = plt.subplots()
ax.plot(solution.t,solution.y.ravel())
ax.set(
    xlabel='Time (t)',
    ylabel='Quantity (y)',
)
ax.grid()
plt.show()