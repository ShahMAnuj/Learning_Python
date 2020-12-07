%prompt the user
y = input('Initial value of y:');
x = input('Initial value of x:');
xf = input('Final value of x:');
dx = input('Step size:');
xout = dx;

%boring calculations
m = 1;
xp = [x];
yp = [y];  
while x < xf
  [x,y] = Integrator(x,y,dx,min(xf, x+xout));
  m = m+1;
  xp(m) = x;
  yp(m) = y;
end

%plot the final result
plot(xp,yp);
title('Solution using Euler Method');
ylabel('Dependent variable (y)');
xlabel('Independent variable (x)');
grid on;