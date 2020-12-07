%prompt the user
x = input('Enter x:');
y = input('Enter y:');

if x >= 0
  if y >= 0
    func = x + y;
  else
    func = x + y^2;
  endif
else
  if y >= 0
    func = x^2 + y;
  else
    func = x^2 + y^2;
  endif
endif

fprintf('f(%f,%f) = %f\n', x, y, func);