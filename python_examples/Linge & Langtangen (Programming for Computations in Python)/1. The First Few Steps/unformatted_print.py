from math import sin

t0 = 2
dt = 0.55

# Unformatted print
t = t0 + 0*dt; g = t*sin(t)
print (t, g)
t = t0 + 1*dt; g = t*sin(t)
print (t, g)
t = t0 + 2*dt; g = t*sin(t)
print (t, g)

#Formatted print
t = t0 + 0*dt; g = t*sin(t)
print ("%6.2f %8.3f" %(t,g))
t = t0 + 1*dt; g = t*sin(t)
print ("%6.2f %8.3f" %(t,g))
t = t0 + 2*dt; g = t*sin(t)
print ("%6.2f %8.3f" %(t,g))