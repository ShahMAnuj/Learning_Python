from trapezoidal import trapezoidal
from math import exp
v = lambda t: 3*(t**2)*exp(t**3)
n = 4

numerical = trapezoidal(v, 0, 1, n)

# Compare with exact result
V = lambda t: exp(t**3)
exact = V(1) - V(0)
error = exact - numerical
print('n=%d: %.16f, error: %g' % (n, numerical, error))		

