#prompt user for input
temp = float(input('Enter body temperature (in fahrenheit):'))

if temp <= 97.5:
    print('Body temperature below normal')
elif (temp > 97.5) & (temp <= 99.5):
    print('Body temperature normal')
elif (temp > 99.5) & (temp <= 103.0):
    print('Body temperature slightly high')
else:
    print('Body temperature dangerously high')