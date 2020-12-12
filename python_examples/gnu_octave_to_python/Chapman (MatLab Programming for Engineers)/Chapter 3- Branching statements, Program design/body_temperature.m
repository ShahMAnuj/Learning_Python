%prompt user for input
temp = input('Enter body temperature (in fahrenheit):');

if temp <= 97.5
  fprintf('Body temperature below normal\n');
elseif (temp > 97.5) & (temp <= 99.5)
  fprintf('Body temperature normal\n');
elseif (temp > 99.5) & (temp <= 103.0)
  fprintf('Body temperature slightly high\n');
else
  fprintf('Body temperature dangerously high\n');
endif
