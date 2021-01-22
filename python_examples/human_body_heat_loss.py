T_b = float(input('Temperature of body (celsius):'))
T_r = float(input('Temperature of room (celsius):'))
w = float(input('Width of cloth (cm):'))

S = 1.6 #surface area of body in m^2
K = 0.04 #conductivity of cloth in W per m per ^o C

rate = S*K*(T_b - T_r) * (100/w)

print('Body is losing heat at a rate of {} watts'.format(rate))